import os

from cs50 import SQL
from flask import Flask, flash, jsonify, redirect, render_template, request, session

# Configure application
app = Flask(__name__)

# Ensure templates are auto-reloaded
app.config["TEMPLATES_AUTO_RELOAD"] = True

# Configure CS50 Library to use SQLite database
db = SQL("sqlite:///birthdays.db")

message = ''


@app.after_request
def after_request(response):
    """Ensure responses aren't cached"""
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0
    response.headers["Pragma"] = "no-cache"
    return response


@app.route("/", methods=["GET", "POST"])
def index():
    global message
    if request.method == "POST":

        # TODO: Add the user's entry into the database
        message = ''
        name = request.form.get("name")
        month = request.form.get("month")
        day = request.form.get("day")
        if not name or not month or not day:
            message = 'All fields are required.'
            return redirect("/")
        try:
            month = int(month)
            day = int(day)
            if not (1 <= month <= 12) or not (1 <= day <= 31):
                message = 'Invalid month or day.'
                return redirect("/")
        except ValueError:
            message = 'Month and day must be numbers.'
            return redirect("/")
        db.execute("INSERT INTO birthdays (name, month, day) VALUES (?, ?, ?)", name, month, day)
        return redirect("/")


    else:
        birthdays = db.execute("SELECT * FROM birthdays")
        return render_template("index.html", birthdays=birthdays, message = message)


