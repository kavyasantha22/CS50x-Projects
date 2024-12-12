import os

from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session
from flask_session import Session
from werkzeug.security import check_password_hash, generate_password_hash
import datetime
import pytz

from helpers import apology, login_required, lookup, usd

# Configure application
app = Flask(__name__)

# Custom filter
app.jinja_env.filters["usd"] = usd

# Configure session to use filesystem (instead of signed cookies)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

# Configure CS50 Library to use SQLite database
db = SQL("sqlite:///finance.db")


@app.after_request
def after_request(response):
    """Ensure responses aren't cached"""
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0
    response.headers["Pragma"] = "no-cache"
    return response


@app.route("/")
@login_required
def index():
    """Show portfolio of stocks"""
    stocks = db.execute("SELECT * FROM stock_ownership WHERE person_id = ?", session["user_id"])
    for stock in stocks:
        stock["price"] = lookup(stock["stock_name"])["price"]
        stock["total"] = stock["price"]*stock["shares"]
    user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]
    return render_template("index.html", stocks=stocks, user=user)


@app.route("/buy", methods=["GET", "POST"])
@login_required
def buy():
    if request.method == "POST":
        symbol = request.form.get("symbol")
        print("#"*30)
        print(symbol)
        stock_info = lookup(symbol)
        if not stock_info:
            return apology("invalid stock symbol", 400)
        try:
            user_amount = db.execute(
                "SELECT shares FROM stock_ownership WHERE person_id = ? and stock_name = ?", session["user_id"], symbol)[0]["shares"]
        except:
            user_amount = 0

        try:
            amount = int(request.form.get("shares"))
            if amount <= 0:
                return apology("number of shares must be positive", 400)
        except ValueError:
            return apology("number of shares must be an integer", 400)

        price = stock_info["price"]
        total = price * amount
        print(total)

        # Query the user's current cash
        cash = db.execute("SELECT cash FROM users WHERE id = ?", session["user_id"])[0]["cash"]
        print(cash)

        # Check if the user has enough cash to buy
        if total > cash:
            return apology("insufficient funds", 400)

        # Update the user's cash
        cash -= total

        # Insert the buy transaction into stock_ownership
        user_amount += amount
        db.execute("INSERT INTO stock_ownership (person_id, stock_name, shares) VALUES (?, ?, ?) ON CONFLICT(person_id, stock_name) DO UPDATE SET shares = EXCLUDED.shares",
                   session["user_id"], symbol, user_amount)

        # Insert to activity
        current_time = datetime.datetime.now(pytz.timezone(
            "US/Eastern")).strftime('%Y-%m-%d %H:%M:%S')
        db.execute("INSERT INTO activity (person_id, stock_name, buy_sell, shares_amount, price, date) VALUES (?, ?, ?, ?, ?, ?)",
                   session["user_id"], symbol, 'buy', amount, price, current_time)

        # Update the user's cash in the users table
        db.execute("UPDATE users SET cash = ? WHERE id = ?", cash, session["user_id"])

        return redirect("/")
    else:
        return render_template("buy.html")


@app.route("/history")
@login_required
def history():
    activities = db.execute("SELECT * FROM activity WHERE person_id = ?", session["user_id"])
    return render_template("history.html", activities=activities)


@app.route("/login", methods=["GET", "POST"])
def login():
    """Log user in"""

    # Forget any user_id
    session.clear()

    # User reached route via POST (as by submitting a form via POST)
    if request.method == "POST":
        # Ensure username was submitted
        if not request.form.get("username"):
            return apology("must provide username", 403)

        # Ensure password was submitted
        elif not request.form.get("password"):
            return apology("must provide password", 403)

        # Query database for username
        rows = db.execute(
            "SELECT * FROM users WHERE username = ?", request.form.get("username")
        )

        # Ensure username exists and password is correct
        if len(rows) != 1 or not check_password_hash(
            rows[0]["hash"], request.form.get("password")
        ):
            return apology("invalid username and/or password", 403)

        # Remember which user has logged in
        session["user_id"] = rows[0]["id"]

        # Redirect user to home page
        return redirect("/")

    # User reached route via GET (as by clicking a link or via redirect)
    else:
        return render_template("login.html")


@app.route("/logout")
def logout():
    """Log user out"""

    # Forget any user_id
    session.clear()

    # Redirect user to login form
    return redirect("/")


quote_name = ""
quote_price = 0


@app.route("/quote", methods=["GET", "POST"])
@login_required
def quote():
    global quote_name, quote_price
    """Get stock quote."""
    if request.method == "POST":
        symbol = request.form.get("symbol")
        if not symbol:
            return apology("must provide symbol", 400)
        symbol_info = lookup(symbol)
        if not symbol_info:
            return apology("invalid symbol", 400)
        quote_name = symbol_info["symbol"]
        quote_price = symbol_info["price"]
        quote_price = usd(quote_price)
        return redirect("/quote")
    else:
        return render_template("quote.html", name=quote_name, price=quote_price)


@app.route("/register", methods=["GET", "POST"])
def register():
    """Register user"""

    # Forget any user_id
    session.clear()

    # User reached route via POST (as by submitting a form via POST)
    if request.method == "POST":
        # Ensure username was submitted
        username = request.form.get("username")
        password = request.form.get("password")
        confirmation = request.form.get("confirmation")
        if not username:
            return apology("must provide username", 400)

        # Ensure password was submitted
        elif not password:
            return apology("must provide password", 400)

        elif not confirmation:
            return apology("must confirm password", 400)

        if password != confirmation:
            return apology("password and confirmed password must be identical", 400)

        check = db.execute("SELECT username FROM users WHERE username = ?", username)
        print("#"*30, check)
        if check != []:
            return apology("username has been taken", 400)

        hash = generate_password_hash(password)
        # Query database for username
        db.execute(
            "INSERT INTO users (username, hash) VALUES (?, ?)", username, hash
        )
        # Redirect user to home page
        return redirect("/")

    # User reached route via GET (as by clicking a link or via redirect)
    else:
        return render_template("register.html")


@app.route("/sell", methods=["GET", "POST"])
@login_required
def sell():
    """Sell shares of stock"""
    if request.method == "POST":
        symbol = request.form["symbol"]
        stock_info = lookup(symbol)
        if not stock_info:
            return apology("invalid stock symbol", 403)
        user_amount = db.execute(
            "SELECT shares FROM stock_ownership WHERE person_id = ? and stock_name = ?", session["user_id"], symbol)[0]["shares"]

        try:
            amount = int(request.form.get("shares"))
            if amount <= 0:
                return apology("number of shares must be positive", 400)
            if amount > user_amount:
                return apology("number of shares exceed yours", 400)
        except ValueError:
            return apology("number of shares must be an integer", 400)

        price = stock_info["price"]
        total = price * amount
        print(total)

        # Query the user's current cash
        cash = db.execute("SELECT cash FROM users WHERE id = ?", session["user_id"])[0]["cash"]
        print(cash)

        # Check if the user has enough cash to buy

        # Update the user's cash
        cash += total

        # Update user's stock amount
        user_amount -= amount
        db.execute("UPDATE stock_ownership SET shares = ? WHERE person_id = ? and stock_name = ?",
                   user_amount, session["user_id"], symbol)

        # Insert to activity
        current_time = datetime.datetime.now(pytz.timezone(
            "US/Eastern")).strftime('%Y-%m-%d %H:%M:%S')
        db.execute("INSERT INTO activity (person_id, stock_name, buy_sell, shares_amount, price, date) VALUES (?, ?, ?, ?, ?, ?)",
                   session["user_id"], symbol, 'sell', amount, price, current_time)

        # Update the user's cash in the users table
        db.execute("UPDATE users SET cash = ? WHERE id = ?", cash, session["user_id"])

        return redirect("/")
    else:
        stocks = db.execute("SELECT * FROM stock_ownership WHERE person_id = ?", session["user_id"])
        print(stocks)
        return render_template("sell.html", stocks=stocks)
