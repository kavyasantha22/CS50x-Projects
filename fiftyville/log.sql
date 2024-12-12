-- Keep a log of any SQL queries you execute as you solve the mystery.

6) 555-6063 | 1988161715      | 1106N58       |
+-----+------+-------+-----+------+--------+----------+---------------+--------+---------+----------------+-----------------+---------------+
sqlite> SELECT * FROM bakery_security_logs JOIN people ON bakery_security_logs.license_plate = people.license_plate
   ...> WHERE day = 28 AND activity = "exit" AND minute <= 23 AND (HOUR = 10 or HOUR = 9);
+-----+------+-------+-----+------+--------+----------+---------------+--------+---------+----------------+-----------------+---------------+
| id  | year | month | day | hour | minute | activity | license_plate |   id   |  name   |  phone_number  | passport_number | license_plate |
+-----+------+-------+-----+------+--------+----------+---------------+--------+---------+----------------+-----------------+---------------+
| 260 | 2023 | 7     | 28  | 10   | 16     | exit     | 5P2BI95       | 221103 | Vanessa | (725) 555-4692 | 2963008352      | 5P2BI95       |
| 261 | 2023 | 7     | 28  | 10   | 18     | exit     | 94KL13X       | 686048 | Bruce   | (367) 555-5533 | 5773159633      | 94KL13X       |
| 262 | 2023 | 7     | 28  | 10   | 18     | exit     | 6P58WS2       | 243696 | Barry   | (301) 555-4174 | 7526138472      | 6P58WS2       |
| 263 | 2023 | 7     | 28  | 10   | 19     | exit     | 4328GD8       | 467400 | Luca    | (389) 555-5198 | 8496433585      | 4328GD8       |
| 264 | 2023 | 7     | 28  | 10   | 20     | exit     | G412CB7       | 398010 | Sofia   | (130) 555-0289 | 1695452385      | G412CB7       |
| 265 | 2023 | 7     | 28  | 10   | 21     | exit     | L93JTIZ       | 396669 | Iman    | (829) 555-5269 | 7049073643      | L93JTIZ       |
| 266 | 2023 | 7     | 28  | 10   | 23     | exit     | 322W7JE       | 514354 | Diana   | (770) 555-1861 | 3592750733      | 322W7JE       |
| 267 | 2023 | 7     | 28  | 10   | 23     | exit     | 0NTHK55       | 560886 | Kelsey  | (499) 555-9472 | 8294398571      | 0NTHK55       |
+-----+------+-------+-----+------+--------+----------+---------------+--------+---------+----------------+-----------------+---------------+
sqlite> SELECT * FROM interviews WHERE day = 28;
+-----+-----------+------+-------+-----+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| id  |   name    | year | month | day |                                                                                                                                                                                                                                                                                                                                                                                                                                                  transcript                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
+-----+-----------+------+-------+-----+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 18  | Diana     | 2023 | 1     | 28  | “He can’t lie in the street. May we bring him in, marm?”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 19  | Katherine | 2023 | 1     | 28  | “Why, indeed?” murmured Holmes. “Your Majesty had not spoken before I was aware that I was addressing Wilhelm Gottsreich Sigismond von Ormstein, Grand Duke of Cassel-Felstein, and hereditary King of Bohemia.”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 73  | Danielle  | 2023 | 3     | 28  | “Indeed, your example is an unfortunate one for your argument,” said Holmes, taking the paper and glancing his eye down it. “This is the Dundas separation case, and, as it happens, I was engaged in clearing up some small points in connection with it. The husband was a teetotaler, there was no other woman, and the conduct complained of was that he had drifted into the habit of winding up every meal by taking out his false teeth and hurling them at his wife, which, you will allow, is not an action likely to occur to the imagination of the average story-teller. Take a pinch of snuff, Doctor, and acknowledge that I have scored over you in your example.”                                                                                                                                                                                                                             |
| 135 | Jesse     | 2023 | 6     | 28  | “I must really ask you to be a little more quiet!” said Holmes severely. “You have already imperilled the whole success of our expedition. Might I beg that you would have the goodness to sit down upon one of those boxes, and not to interfere?”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 136 | Judy      | 2023 | 6     | 28  | “So far I had got when we went to visit the scene of action. I surprised you by beating upon the pavement with my stick. I was ascertaining whether the cellar stretched out in front or behind. It was not in front. Then I rang the bell, and, as I hoped, the assistant answered it. We have had some skirmishes, but we had never set eyes upon each other before. I hardly looked at his face. His knees were what I wished to see. You must yourself have remarked how worn, wrinkled, and stained they were. They spoke of those hours of burrowing. The only remaining point was what they were burrowing for. I walked round the corner, saw the City and Suburban Bank abutted on our friend’s premises, and felt that I had solved my problem. When you drove home after the concert I called upon Scotland Yard and upon the chairman of the bank directors, with the result that you have seen.” |
| 137 | Frank     | 2023 | 6     | 28  | “That also I could fathom.”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 158 | Jose      | 2023 | 7     | 28  | “Ah,” said he, “I forgot that I had not seen you for some weeks. It is a little souvenir from the King of Bohemia in return for my assistance in the case of the Irene Adler papers.”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 159 | Eugene    | 2023 | 7     | 28  | “I suppose,” said Holmes, “that when Mr. Windibank came back from France he was very annoyed at your having gone to the ball.”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 160 | Barbara   | 2023 | 7     | 28  | “You had my note?” he asked with a deep harsh voice and a strongly marked German accent. “I told you that I would call.” He looked from one to the other of us, as if uncertain which to address.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 161 | Ruth      | 2023 | 7     | 28  | Sometime within ten minutes of the theft, I saw the thief get into a car in the bakery parking lot and drive away. If you have security footage from the bakery parking lot, you might want to look for cars that left the parking lot in that time frame.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| 162 | Eugene    | 2023 | 7     | 28  | I don't know the thief's name, but it was someone I recognized. Earlier this morning, before I arrived at Emma's bakery, I was walking by the ATM on Leggett Street and saw the thief there withdrawing some money.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 163 | Raymond   | 2023 | 7     | 28  | As the thief was leaving the bakery, they called someone who talked to them for less than a minute. In the call, I heard the thief say that they were planning to take the earliest flight out of Fiftyville tomorrow. The thief then asked the person on the other end of the phone to purchase the flight ticket.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 191 | Lily      | 2023 | 7     | 28  | Our neighboring courthouse has a very annoying rooster that crows loudly at 6am every day. My sons Robert and Patrick took the rooster to a city far, far away, so it may never bother us again. My sons have successfully arrived in Paris.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
+-----+-----------+------+-------+-----+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
sqlite> SELECT * FROM atm_transactions WHERE day = 28;
+-----+----------------+------+-------+-----+----------------------+------------------+--------+
| id  | account_number | year | month | day |     atm_location     | transaction_type | amount |
+-----+----------------+------+-------+-----+----------------------+------------------+--------+
| 245 | 90209473       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 45     |
| 246 | 28500762       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 48     |
| 247 | 41935128       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 15     |
| 248 | 94973060       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 50     |
| 249 | 21004503       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 40     |
| 250 | 45468795       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 15     |
| 251 | 57029719       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 80     |
| 252 | 93622979       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 15     |
| 253 | 66454844       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 60     |
| 254 | 16113845       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 55     |
| 255 | 66344537       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 55     |
| 256 | 97773635       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 85     |
| 257 | 45096649       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 65     |
| 258 | 92647903       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 5      |
| 259 | 85274751       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 70     |
| 260 | 99835463       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 40     |
| 261 | 67735369       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 20     |
| 262 | 40665580       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 35     |
| 263 | 19531272       | 2023 | 7     | 28  | Blumberg Boulevard   | withdraw         | 55     |
| 264 | 28296815       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 20     |
| 265 | 96336648       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 20     |
| 266 | 76054385       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 60     |
| 267 | 49610011       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 50     |
| 268 | 92206742       | 2023 | 7     | 28  | Blumberg Boulevard   | withdraw         | 30     |
| 269 | 16153065       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 80     |
| 270 | 24133830       | 2023 | 7     | 28  | Carvalho Road        | deposit          | 5      |
| 271 | 20774848       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 40     |
| 272 | 21656307       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 10     |
| 273 | 69638157       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 20     |
| 274 | 27952274       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 95     |
| 275 | 86363979       | 2023 | 7     | 28  | Leggett Street       | deposit          | 10     |
| 276 | 13156006       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 15     |
| 277 | 89843009       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 40     |
| 278 | 69278040       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 45     |
| 279 | 98353484       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 95     |
| 280 | 92647903       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 40     |
| 281 | 57022441       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 55     |
| 282 | 32179718       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 20     |
| 283 | 75571594       | 2023 | 7     | 28  | Blumberg Boulevard   | withdraw         | 40     |
| 284 | 32212020       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 20     |
| 285 | 71305903       | 2023 | 7     | 28  | Carvalho Road        | deposit          | 35     |
| 286 | 16654966       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 100    |
| 287 | 38010758       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 85     |
| 288 | 25506511       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 20     |
| 289 | 62690806       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 45     |
| 290 | 79165736       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 5      |
| 291 | 76849114       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 10     |
| 292 | 56171033       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 70     |
| 293 | 27482737       | 2023 | 7     | 28  | Carvalho Road        | deposit          | 85     |
| 294 | 66254725       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 70     |
| 295 | 74812642       | 2023 | 7     | 28  | Blumberg Boulevard   | withdraw         | 60     |
| 296 | 96352349       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 10     |
| 297 | 26017967       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 85     |
| 298 | 70992522       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 25     |
| 299 | 37543139       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 85     |
| 300 | 66344537       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 60     |
| 301 | 55656186       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 95     |
| 302 | 50380485       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 100    |
| 303 | 54824866       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 15     |
| 304 | 26249951       | 2023 | 7     | 28  | Carvalho Road        | deposit          | 70     |
| 305 | 93401152       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 65     |
| 306 | 34939061       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 10     |
| 307 | 24064261       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 25     |
| 308 | 69638157       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 85     |
| 309 | 46222318       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 60     |
| 310 | 58673910       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 10     |
| 311 | 95773068       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 70     |
| 312 | 93903397       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 35     |
| 313 | 81061156       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 30     |
| 314 | 73183211       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 80     |
| 315 | 79127781       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 65     |
| 316 | 95773068       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 45     |
| 317 | 11605357       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 40     |
| 318 | 40981669       | 2023 | 7     | 28  | Carvalho Road        | deposit          | 85     |
| 319 | 57022441       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 85     |
| 320 | 15452229       | 2023 | 7     | 28  | Blumberg Boulevard   | withdraw         | 25     |
| 321 | 40231842       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 5      |
| 322 | 26797365       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 35     |
| 323 | 18363023       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 5      |
| 324 | 13156006       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 15     |
| 325 | 87859883       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 5      |
| 326 | 91814087       | 2023 | 7     | 28  | Daboin Sanchez Drive | deposit          | 45     |
| 327 | 40665580       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 65     |
| 328 | 47306903       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 90     |
| 329 | 34939061       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 100    |
| 330 | 26191313       | 2023 | 7     | 28  | Daboin Sanchez Drive | withdraw         | 90     |
| 331 | 59116006       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 40     |
| 332 | 96352349       | 2023 | 7     | 28  | Carvalho Road        | deposit          | 65     |
| 333 | 65190958       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 50     |
| 334 | 99031604       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 20     |
| 335 | 32134232       | 2023 | 7     | 28  | Humphrey Lane        | deposit          | 70     |
| 336 | 26013199       | 2023 | 7     | 28  | Leggett Street       | withdraw         | 35     |
| 337 | 58552019       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 30     |
| 338 | 17171330       | 2023 | 7     | 28  | Blumberg Boulevard   | withdraw         | 15     |
| 339 | 14180174       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 95     |
| 340 | 86850293       | 2023 | 7     | 28  | Blumberg Boulevard   | deposit          | 60     |
| 341 | 97338436       | 2023 | 7     | 28  | Carvalho Road        | withdraw         | 60     |
| 342 | 55322348       | 2023 | 7     | 28  | Humphrey Lane        | withdraw         | 5      |
+-----+----------------+------+-------+-----+----------------------+------------------+--------+
sqlite> SELECT * FROM atm_transactions WHERE day = 28 AND atm_location = "Leggett Street";
+-----+----------------+------+-------+-----+----------------+------------------+--------+
| id  | account_number | year | month | day |  atm_location  | transaction_type | amount |
+-----+----------------+------+-------+-----+----------------+------------------+--------+
| 246 | 28500762       | 2023 | 7     | 28  | Leggett Street | withdraw         | 48     |
| 264 | 28296815       | 2023 | 7     | 28  | Leggett Street | withdraw         | 20     |
| 266 | 76054385       | 2023 | 7     | 28  | Leggett Street | withdraw         | 60     |
| 267 | 49610011       | 2023 | 7     | 28  | Leggett Street | withdraw         | 50     |
| 269 | 16153065       | 2023 | 7     | 28  | Leggett Street | withdraw         | 80     |
| 275 | 86363979       | 2023 | 7     | 28  | Leggett Street | deposit          | 10     |
| 288 | 25506511       | 2023 | 7     | 28  | Leggett Street | withdraw         | 20     |
| 313 | 81061156       | 2023 | 7     | 28  | Leggett Street | withdraw         | 30     |
| 336 | 26013199       | 2023 | 7     | 28  | Leggett Street | withdraw         | 35     |
+-----+----------------+------+-------+-----+----------------+------------------+--------+
sqlite> SELECT * FROM people
   ...> JOIN bank_accounts ON people.id = bank_accounts.person_id
   ...> JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number WHERE day = 28 AND atm_location = "Leggett Street";
+--------+---------+----------------+-----------------+---------------+----------------+-----------+---------------+-----+----------------+------+-------+-----+----------------+------------------+--------+
|   id   |  name   |  phone_number  | passport_number | license_plate | account_number | person_id | creation_year | id  | account_number | year | month | day |  atm_location  | transaction_type | amount |
+--------+---------+----------------+-----------------+---------------+----------------+-----------+---------------+-----+----------------+------+-------+-----+----------------+------------------+--------+
| 686048 | Bruce   | (367) 555-5533 | 5773159633      | 94KL13X       | 49610011       | 686048    | 2010          | 267 | 49610011       | 2023 | 7     | 28  | Leggett Street | withdraw         | 50     |
| 948985 | Kaelyn  | (098) 555-1164 | 8304650265      | I449449       | 86363979       | 948985    | 2010          | 275 | 86363979       | 2023 | 7     | 28  | Leggett Street | deposit          | 10     |
| 514354 | Diana   | (770) 555-1861 | 3592750733      | 322W7JE       | 26013199       | 514354    | 2012          | 336 | 26013199       | 2023 | 7     | 28  | Leggett Street | withdraw         | 35     |
| 458378 | Brooke  | (122) 555-4581 | 4408372428      | QX4YZN3       | 16153065       | 458378    | 2012          | 269 | 16153065       | 2023 | 7     | 28  | Leggett Street | withdraw         | 80     |
| 395717 | Kenny   | (826) 555-1652 | 9878712108      | 30G67EN       | 28296815       | 395717    | 2014          | 264 | 28296815       | 2023 | 7     | 28  | Leggett Street | withdraw         | 20     |
| 396669 | Iman    | (829) 555-5269 | 7049073643      | L93JTIZ       | 25506511       | 396669    | 2014          | 288 | 25506511       | 2023 | 7     | 28  | Leggett Street | withdraw         | 20     |
| 467400 | Luca    | (389) 555-5198 | 8496433585      | 4328GD8       | 28500762       | 467400    | 2014          | 246 | 28500762       | 2023 | 7     | 28  | Leggett Street | withdraw         | 48     |
| 449774 | Taylor  | (286) 555-6063 | 1988161715      | 1106N58       | 76054385       | 449774    | 2015          | 266 | 76054385       | 2023 | 7     | 28  | Leggett Street | withdraw         | 60     |
| 438727 | Benista | (338) 555-6650 | 9586786673      | 8X428L0       | 81061156       | 438727    | 2018          | 313 | 81061156       | 2023 | 7     | 28  | Leggett Street | withdraw         | 30     |
+--------+---------+----------------+-----------------+---------------+----------------+-----------+---------------+-----+----------------+------+-------+-----+----------------+------------------+--------+
sqlite> SELECT name, passport_number, license_plate, account_number FROM people
   ...> JOIN bank_accounts ON people.id = bank_accounts.person_id
   ...> JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number WHERE day = 28 AND atm_location = "Leggett Street";
Parse error: ambiguous column name: account_number
  SELECT name, passport_number, license_plate, account_number FROM people JOIN b
                                 error here ---^
sqlite> SELECT name, passport_number, license_plate FROM people
   ...> JOIN bank_accounts ON people.id = bank_accounts.person_id
   ...> JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number WHERE day = 28 AND atm_location = "Leggett Street";
+---------+-----------------+---------------+
|  name   | passport_number | license_plate |
+---------+-----------------+---------------+
| Bruce   | 5773159633      | 94KL13X       |
| Kaelyn  | 8304650265      | I449449       |
| Diana   | 3592750733      | 322W7JE       |
| Brooke  | 4408372428      | QX4YZN3       |
| Kenny   | 9878712108      | 30G67EN       |
| Iman    | 7049073643      | L93JTIZ       |
| Luca    | 8496433585      | 4328GD8       |
| Taylor  | 1988161715      | 1106N58       |
| Benista | 9586786673      | 8X428L0       |
+---------+-----------------+---------------+
sqlite> SELECT * FROM people WHERE name = "Bruce" OR name = "Iman" OR name = "Luca" OR name = "Diana"
   ...> ;
+--------+-------+----------------+-----------------+---------------+
|   id   | name  |  phone_number  | passport_number | license_plate |
+--------+-------+----------------+-----------------+---------------+
| 396669 | Iman  | (829) 555-5269 | 7049073643      | L93JTIZ       |
| 467400 | Luca  | (389) 555-5198 | 8496433585      | 4328GD8       |
| 514354 | Diana | (770) 555-1861 | 3592750733      | 322W7JE       |
| 686048 | Bruce | (367) 555-5533 | 5773159633      | 94KL13X       |
+--------+-------+----------------+-----------------+---------------+
sqlite> SELECT name, passport_number, license_plate FROM people
   ...> JOIN bank_accounts ON people.id = bank_accounts.person_id
   ...> JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number WHERE day = 28 AND atm_location = "Leggett Street";
+---------+-----------------+---------------+
|  name   | passport_number | license_plate |
+---------+-----------------+---------------+
| Bruce   | 5773159633      | 94KL13X       |
| Kaelyn  | 8304650265      | I449449       |
| Diana   | 3592750733      | 322W7JE       |
| Brooke  | 4408372428      | QX4YZN3       |
| Kenny   | 9878712108      | 30G67EN       |
| Iman    | 7049073643      | L93JTIZ       |
| Luca    | 8496433585      | 4328GD8       |
| Taylor  | 1988161715      | 1106N58       |
| Benista | 9586786673      | 8X428L0       |
+---------+-----------------+---------------+
sqlite> SELECT name, passport_number, license_plate FROM people
   ...> JOIN bank_accounts ON people.id = bank_accounts.person_id
   ...> JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number WHERE day = 28 AND atm_location = "Leggett Street";
+---------+-----------------+---------------+
|  name   | passport_number | license_plate |
+---------+-----------------+---------------+
| Bruce   | 5773159633      | 94KL13X       |
| Kaelyn  | 8304650265      | I449449       |
| Diana   | 3592750733      | 322W7JE       |
| Brooke  | 4408372428      | QX4YZN3       |
| Kenny   | 9878712108      | 30G67EN       |
| Iman    | 7049073643      | L93JTIZ       |
| Luca    | 8496433585      | 4328GD8       |
| Taylor  | 1988161715      | 1106N58       |
| Benista | 9586786673      | 8X428L0       |
+---------+-----------------+---------------+
sqlite> SELECT * FROM people WHERE name = "Bruce" OR name = "Iman" OR name = "Luca" OR name = "Diana"
   ...> ;
+--------+-------+----------------+-----------------+---------------+
|   id   | name  |  phone_number  | passport_number | license_plate |
+--------+-------+----------------+-----------------+---------------+
| 396669 | Iman  | (829) 555-5269 | 7049073643      | L93JTIZ       |
| 467400 | Luca  | (389) 555-5198 | 8496433585      | 4328GD8       |
| 514354 | Diana | (770) 555-1861 | 3592750733      | 322W7JE       |
| 686048 | Bruce | (367) 555-5533 | 5773159633      | 94KL13X       |
+--------+-------+----------------+-----------------+---------------+
sqlite> SELECT * FROM phone_calls WHERE day = 28 AND duration < 1;
sqlite> SELECT * FROM phone_calls WHERE day = 28;
+-----+----------------+----------------+------+-------+-----+----------+
| id  |     caller     |    receiver    | year | month | day | duration |
+-----+----------------+----------------+------+-------+-----+----------+
| 211 | (336) 555-0077 | (098) 555-1164 | 2023 | 7     | 28  | 318      |
| 212 | (918) 555-5327 | (060) 555-2489 | 2023 | 7     | 28  | 146      |
| 213 | (491) 555-2505 | (478) 555-1565 | 2023 | 7     | 28  | 241      |
| 214 | (996) 555-8899 | (059) 555-4698 | 2023 | 7     | 28  | 142      |
| 215 | (704) 555-5790 | (772) 555-5770 | 2023 | 7     | 28  | 200      |
| 216 | (984) 555-5921 | (618) 555-9856 | 2023 | 7     | 28  | 546      |
| 217 | (579) 555-5030 | (971) 555-6468 | 2023 | 7     | 28  | 421      |
| 218 | (233) 555-0473 | (831) 555-0973 | 2023 | 7     | 28  | 113      |
| 219 | (293) 555-1469 | (749) 555-4874 | 2023 | 7     | 28  | 195      |
| 220 | (450) 555-8297 | (771) 555-7880 | 2023 | 7     | 28  | 298      |
| 221 | (130) 555-0289 | (996) 555-8899 | 2023 | 7     | 28  | 51       |
| 222 | (209) 555-7806 | (693) 555-7986 | 2023 | 7     | 28  | 487      |
| 223 | (918) 555-2946 | (006) 555-0505 | 2023 | 7     | 28  | 359      |
| 224 | (499) 555-9472 | (892) 555-8872 | 2023 | 7     | 28  | 36       |
| 225 | (669) 555-6918 | (914) 555-5994 | 2023 | 7     | 28  | 233      |
| 226 | (547) 555-8781 | (398) 555-1013 | 2023 | 7     | 28  | 272      |
| 227 | (544) 555-8087 | (389) 555-5198 | 2023 | 7     | 28  | 595      |
| 228 | (666) 555-5774 | (125) 555-8030 | 2023 | 7     | 28  | 326      |
| 229 | (047) 555-0577 | (059) 555-4698 | 2023 | 7     | 28  | 379      |
| 230 | (301) 555-4174 | (711) 555-3007 | 2023 | 7     | 28  | 583      |
| 231 | (801) 555-9266 | (984) 555-5921 | 2023 | 7     | 28  | 148      |
| 232 | (971) 555-6468 | (267) 555-2761 | 2023 | 7     | 28  | 149      |
| 233 | (367) 555-5533 | (375) 555-8161 | 2023 | 7     | 28  | 45       |
| 234 | (609) 555-5876 | (389) 555-5198 | 2023 | 7     | 28  | 60       |
| 235 | (357) 555-0246 | (502) 555-6712 | 2023 | 7     | 28  | 305      |
| 236 | (367) 555-5533 | (344) 555-9601 | 2023 | 7     | 28  | 120      |
| 237 | (394) 555-3247 | (035) 555-2997 | 2023 | 7     | 28  | 111      |
| 238 | (839) 555-1757 | (487) 555-5865 | 2023 | 7     | 28  | 278      |
| 239 | (770) 555-1196 | (324) 555-0416 | 2023 | 7     | 28  | 527      |
| 240 | (636) 555-4198 | (670) 555-8598 | 2023 | 7     | 28  | 69       |
| 241 | (068) 555-0183 | (770) 555-1861 | 2023 | 7     | 28  | 371      |
| 242 | (711) 555-3007 | (113) 555-7544 | 2023 | 7     | 28  | 157      |
| 243 | (060) 555-2489 | (204) 555-4136 | 2023 | 7     | 28  | 510      |
| 244 | (704) 555-2131 | (891) 555-5672 | 2023 | 7     | 28  | 103      |
| 245 | (367) 555-5533 | (022) 555-4052 | 2023 | 7     | 28  | 241      |
| 246 | (873) 555-3868 | (047) 555-0577 | 2023 | 7     | 28  | 109      |
| 247 | (867) 555-9103 | (068) 555-0183 | 2023 | 7     | 28  | 116      |
| 248 | (608) 555-9302 | (725) 555-3243 | 2023 | 7     | 28  | 280      |
| 249 | (901) 555-8732 | (491) 555-2505 | 2023 | 7     | 28  | 451      |
| 250 | (478) 555-1565 | (717) 555-1342 | 2023 | 7     | 28  | 573      |
| 251 | (499) 555-9472 | (717) 555-1342 | 2023 | 7     | 28  | 50       |
| 252 | (695) 555-0348 | (338) 555-6650 | 2023 | 7     | 28  | 383      |
| 253 | (696) 555-9195 | (258) 555-5627 | 2023 | 7     | 28  | 525      |
| 254 | (286) 555-6063 | (676) 555-6554 | 2023 | 7     | 28  | 43       |
| 255 | (770) 555-1861 | (725) 555-3243 | 2023 | 7     | 28  | 49       |
| 256 | (711) 555-3007 | (147) 555-6818 | 2023 | 7     | 28  | 358      |
| 257 | (725) 555-4692 | (821) 555-5262 | 2023 | 7     | 28  | 456      |
| 258 | (324) 555-0416 | (452) 555-8550 | 2023 | 7     | 28  | 328      |
| 259 | (234) 555-1294 | (772) 555-5770 | 2023 | 7     | 28  | 573      |
| 260 | (669) 555-6918 | (971) 555-6468 | 2023 | 7     | 28  | 67       |
| 261 | (031) 555-6622 | (910) 555-3251 | 2023 | 7     | 28  | 38       |
| 262 | (342) 555-9260 | (219) 555-0139 | 2023 | 7     | 28  | 404      |
| 263 | (342) 555-9260 | (487) 555-5865 | 2023 | 7     | 28  | 560      |
| 264 | (801) 555-9266 | (608) 555-9302 | 2023 | 7     | 28  | 425      |
| 265 | (398) 555-1013 | (329) 555-5870 | 2023 | 7     | 28  | 237      |
| 266 | (016) 555-9166 | (336) 555-0077 | 2023 | 7     | 28  | 88       |
| 267 | (594) 555-2863 | (491) 555-2505 | 2023 | 7     | 28  | 361      |
| 268 | (122) 555-4581 | (831) 555-0973 | 2023 | 7     | 28  | 491      |
| 269 | (914) 555-5994 | (973) 555-3809 | 2023 | 7     | 28  | 320      |
| 270 | (258) 555-5627 | (695) 555-0348 | 2023 | 7     | 28  | 368      |
| 271 | (751) 555-6567 | (594) 555-6254 | 2023 | 7     | 28  | 61       |
| 272 | (771) 555-7880 | (711) 555-3007 | 2023 | 7     | 28  | 288      |
| 273 | (219) 555-0139 | (867) 555-9103 | 2023 | 7     | 28  | 514      |
| 274 | (676) 555-6554 | (328) 555-9658 | 2023 | 7     | 28  | 153      |
| 275 | (749) 555-4874 | (492) 555-5484 | 2023 | 7     | 28  | 575      |
| 276 | (328) 555-9658 | (775) 555-7584 | 2023 | 7     | 28  | 579      |
| 277 | (219) 555-0139 | (910) 555-3251 | 2023 | 7     | 28  | 121      |
| 278 | (380) 555-4380 | (680) 555-4935 | 2023 | 7     | 28  | 550      |
| 279 | (826) 555-1652 | (066) 555-9701 | 2023 | 7     | 28  | 55       |
| 280 | (594) 555-6254 | (123) 555-5144 | 2023 | 7     | 28  | 346      |
| 281 | (338) 555-6650 | (704) 555-2131 | 2023 | 7     | 28  | 54       |
| 282 | (971) 555-6468 | (258) 555-5627 | 2023 | 7     | 28  | 441      |
| 283 | (730) 555-5115 | (343) 555-0167 | 2023 | 7     | 28  | 101      |
| 284 | (286) 555-6063 | (310) 555-8568 | 2023 | 7     | 28  | 235      |
| 285 | (367) 555-5533 | (704) 555-5790 | 2023 | 7     | 28  | 75       |
| 286 | (041) 555-4011 | (609) 555-5876 | 2023 | 7     | 28  | 565      |
| 287 | (478) 555-1565 | (031) 555-6622 | 2023 | 7     | 28  | 398      |
+-----+----------------+----------------+------+-------+-----+----------+
sqlite> SELECT * FROM phone_calls WHERE day = 28 DURATION <60;
Parse error: near "DURATION": syntax error
  SELECT * FROM phone_calls WHERE day = 28 DURATION <60;
                             error here ---^
sqlite> SELECT * FROM phone_calls WHERE day = 28 DURATION < 60;
Parse error: near "DURATION": syntax error
  SELECT * FROM phone_calls WHERE day = 28 DURATION < 60;
                             error here ---^
sqlite> SELECT * FROM phone_calls WHERE day = 28 duration < 60;
Parse error: near "duration": syntax error
  SELECT * FROM phone_calls WHERE day = 28 duration < 60;
                             error here ---^
sqlite> SELECT * FROM phone_calls WHERE day = 28 AND duration < 60;
+-----+----------------+----------------+------+-------+-----+----------+
| id  |     caller     |    receiver    | year | month | day | duration |
+-----+----------------+----------------+------+-------+-----+----------+
| 221 | (130) 555-0289 | (996) 555-8899 | 2023 | 7     | 28  | 51       |
| 224 | (499) 555-9472 | (892) 555-8872 | 2023 | 7     | 28  | 36       |
| 233 | (367) 555-5533 | (375) 555-8161 | 2023 | 7     | 28  | 45       |
| 251 | (499) 555-9472 | (717) 555-1342 | 2023 | 7     | 28  | 50       |
| 254 | (286) 555-6063 | (676) 555-6554 | 2023 | 7     | 28  | 43       |
| 255 | (770) 555-1861 | (725) 555-3243 | 2023 | 7     | 28  | 49       |
| 261 | (031) 555-6622 | (910) 555-3251 | 2023 | 7     | 28  | 38       |
| 279 | (826) 555-1652 | (066) 555-9701 | 2023 | 7     | 28  | 55       |
| 281 | (338) 555-6650 | (704) 555-2131 | 2023 | 7     | 28  | 54       |
+-----+----------------+----------------+------+-------+-----+----------+
sqlite> SELECT * FROM phone_calls JOIN people ON caller = phone_number WHERE day = 28 AND duration
 < 60;
+-----+----------------+----------------+------+-------+-----+----------+--------+---------+----------------+-----------------+---------------+
| id  |     caller     |    receiver    | year | month | day | duration |   id   |  name   |  phone_number  | passport_number | license_plate |
+-----+----------------+----------------+------+-------+-----+----------+--------+---------+----------------+-----------------+---------------+
| 221 | (130) 555-0289 | (996) 555-8899 | 2023 | 7     | 28  | 51       | 398010 | Sofia   | (130) 555-0289 | 1695452385      | G412CB7       |
| 224 | (499) 555-9472 | (892) 555-8872 | 2023 | 7     | 28  | 36       | 560886 | Kelsey  | (499) 555-9472 | 8294398571      | 0NTHK55       |
| 233 | (367) 555-5533 | (375) 555-8161 | 2023 | 7     | 28  | 45       | 686048 | Bruce   | (367) 555-5533 | 5773159633      | 94KL13X       |
| 251 | (499) 555-9472 | (717) 555-1342 | 2023 | 7     | 28  | 50       | 560886 | Kelsey  | (499) 555-9472 | 8294398571      | 0NTHK55       |
| 254 | (286) 555-6063 | (676) 555-6554 | 2023 | 7     | 28  | 43       | 449774 | Taylor  | (286) 555-6063 | 1988161715      | 1106N58       |
| 255 | (770) 555-1861 | (725) 555-3243 | 2023 | 7     | 28  | 49       | 514354 | Diana   | (770) 555-1861 | 3592750733      | 322W7JE       |
| 261 | (031) 555-6622 | (910) 555-3251 | 2023 | 7     | 28  | 38       | 907148 | Carina  | (031) 555-6622 | 9628244268      | Q12B3Z3       |
| 279 | (826) 555-1652 | (066) 555-9701 | 2023 | 7     | 28  | 55       | 395717 | Kenny   | (826) 555-1652 | 9878712108      | 30G67EN       |
| 281 | (338) 555-6650 | (704) 555-2131 | 2023 | 7     | 28  | 54       | 438727 | Benista | (338) 555-6650 | 9586786673      | 8X428L0       |
+-----+----------------+----------------+------+-------+-----+----------+--------+---------+----------------+-----------------+---------------+
sqlite> SELECT * FROM flights WHERE day = 28;
Parse error: near "ELECT": syntax error
  ELECT * FROM flights WHERE day = 28;
  ^--- error here
sqlite> SELECT * FROM flights WHERE day = 28;
+----+-------------------+------------------------+------+-------+-----+------+--------+
| id | origin_airport_id | destination_airport_id | year | month | day | hour | minute |
+----+-------------------+------------------------+------+-------+-----+------+--------+
| 1  | 8                 | 7                      | 2023 | 7     | 28  | 17   | 50     |
| 4  | 1                 | 8                      | 2023 | 7     | 28  | 9    | 28     |
| 6  | 8                 | 5                      | 2023 | 7     | 28  | 13   | 49     |
| 17 | 8                 | 4                      | 2023 | 7     | 28  | 20   | 16     |
| 19 | 2                 | 8                      | 2023 | 7     | 28  | 21   | 15     |
| 20 | 6                 | 8                      | 2023 | 7     | 28  | 15   | 22     |
| 22 | 1                 | 8                      | 2023 | 7     | 28  | 12   | 51     |
| 27 | 5                 | 8                      | 2023 | 7     | 28  | 8    | 35     |
| 33 | 6                 | 8                      | 2023 | 7     | 28  | 17   | 58     |
| 34 | 8                 | 5                      | 2023 | 7     | 28  | 17   | 20     |
| 35 | 8                 | 4                      | 2023 | 7     | 28  | 16   | 16     |
| 40 | 7                 | 8                      | 2023 | 7     | 28  | 13   | 47     |
| 41 | 3                 | 8                      | 2023 | 7     | 28  | 14   | 14     |
| 51 | 4                 | 8                      | 2023 | 7     | 28  | 18   | 3      |
+----+-------------------+------------------------+------+-------+-----+------+--------+
sqlite> SELECT * FROM flights WHERE day = 28 AND hour>10;
+----+-------------------+------------------------+------+-------+-----+------+--------+
| id | origin_airport_id | destination_airport_id | year | month | day | hour | minute |
+----+-------------------+------------------------+------+-------+-----+------+--------+
| 1  | 8                 | 7                      | 2023 | 7     | 28  | 17   | 50     |
| 6  | 8                 | 5                      | 2023 | 7     | 28  | 13   | 49     |
| 17 | 8                 | 4                      | 2023 | 7     | 28  | 20   | 16     |
| 19 | 2                 | 8                      | 2023 | 7     | 28  | 21   | 15     |
| 20 | 6                 | 8                      | 2023 | 7     | 28  | 15   | 22     |
| 22 | 1                 | 8                      | 2023 | 7     | 28  | 12   | 51     |
| 33 | 6                 | 8                      | 2023 | 7     | 28  | 17   | 58     |
| 34 | 8                 | 5                      | 2023 | 7     | 28  | 17   | 20     |
| 35 | 8                 | 4                      | 2023 | 7     | 28  | 16   | 16     |
| 40 | 7                 | 8                      | 2023 | 7     | 28  | 13   | 47     |
| 41 | 3                 | 8                      | 2023 | 7     | 28  | 14   | 14     |
| 51 | 4                 | 8                      | 2023 | 7     | 28  | 18   | 3      |
+----+-------------------+------------------------+------+-------+-----+------+--------+
sqlite> SELECT * FROM flights WHERE day = 29;
+----+-------------------+------------------------+------+-------+-----+------+--------+
| id | origin_airport_id | destination_airport_id | year | month | day | hour | minute |
+----+-------------------+------------------------+------+-------+-----+------+--------+
| 18 | 8                 | 6                      | 2023 | 7     | 29  | 16   | 0      |
| 23 | 8                 | 11                     | 2023 | 7     | 29  | 12   | 15     |
| 36 | 8                 | 4                      | 2023 | 7     | 29  | 8    | 20     |
| 43 | 8                 | 1                      | 2023 | 7     | 29  | 9    | 30     |
| 53 | 8                 | 9                      | 2023 | 7     | 29  | 15   | 20     |
+----+-------------------+------------------------+------+-------+-----+------+--------+
sqlite> SELECT * FROM airports WHERE id = 8;
Parse error: near "SELEC": syntax error
  SELEC* FROM airports WHERE id = 8;
  ^--- error here
sqlite> SELECT * FROM airports WHERE id = 8;
+----+--------------+-----------------------------+------------+
| id | abbreviation |          full_name          |    city    |
+----+--------------+-----------------------------+------------+
| 8  | CSF          | Fiftyville Regional Airport | Fiftyville |
+----+--------------+-----------------------------+------------+
sqlite> SELECT * FROM airports WHERE id = 4;
+----+--------------+-------------------+---------------+
| id | abbreviation |     full_name     |     city      |
+----+--------------+-------------------+---------------+
| 4  | LGA          | LaGuardia Airport | New York City |
+----+--------------+-------------------+---------------+
sqlite> SELECT * FROM passengers WHERE flight_id = 16;
+-----------+-----------------+------+
| flight_id | passport_number | seat |
+-----------+-----------------+------+
| 16        | 1679711307      | 3A   |
| 16        | 5584283945      | 4D   |
| 16        | 5776544886      | 5B   |
| 16        | 9747563214      | 6D   |
| 16        | 7894166154      | 7B   |
| 16        | 6034823042      | 8D   |
+-----------+-----------------+------+
sqlite> SELECT * FROM phone_calls WHERE caller = "Bruce";
sqlite> SELECT * FROM phone_calls WHERE duration < 60;
Parse error: no such column: cduration
  SELECT * FROM phone_calls WHERE cduration < 60;
                    error here ---^
sqlite> SELECT * FROM phone_calls WHERE duration < 60;
+-----+----------------+----------------+------+-------+-----+----------+
| id  |     caller     |    receiver    | year | month | day | duration |
+-----+----------------+----------------+------+-------+-----+----------+
| 22  | (398) 555-1013 | (006) 555-0505 | 2023 | 7     | 25  | 47       |
| 34  | (492) 555-5484 | (406) 555-4440 | 2023 | 7     | 25  | 36       |
| 36  | (286) 555-0131 | (056) 555-0309 | 2023 | 7     | 25  | 46       |
| 71  | (984) 555-5921 | (826) 555-1652 | 2023 | 7     | 25  | 52       |
| 77  | (343) 555-0167 | (973) 555-3809 | 2023 | 7     | 25  | 33       |
| 79  | (751) 555-6567 | (826) 555-1652 | 2023 | 7     | 25  | 34       |
| 90  | (558) 555-9741 | (738) 555-2050 | 2023 | 7     | 26  | 49       |
| 99  | (337) 555-9411 | (568) 555-3190 | 2023 | 7     | 26  | 58       |
| 106 | (452) 555-8550 | (994) 555-3373 | 2023 | 7     | 26  | 48       |
| 108 | (375) 555-8161 | (211) 555-3762 | 2023 | 7     | 26  | 57       |
| 117 | (505) 555-5698 | (027) 555-1068 | 2023 | 7     | 26  | 35       |
| 125 | (380) 555-4380 | (037) 555-8455 | 2023 | 7     | 26  | 30       |
| 149 | (891) 555-5672 | (869) 555-6696 | 2023 | 7     | 26  | 47       |
| 152 | (801) 555-8906 | (450) 555-8297 | 2023 | 7     | 26  | 35       |
| 175 | (789) 555-8833 | (960) 555-2044 | 2023 | 7     | 27  | 33       |
| 221 | (130) 555-0289 | (996) 555-8899 | 2023 | 7     | 28  | 51       |
| 224 | (499) 555-9472 | (892) 555-8872 | 2023 | 7     | 28  | 36       |
| 233 | (367) 555-5533 | (375) 555-8161 | 2023 | 7     | 28  | 45       |
| 251 | (499) 555-9472 | (717) 555-1342 | 2023 | 7     | 28  | 50       |
| 254 | (286) 555-6063 | (676) 555-6554 | 2023 | 7     | 28  | 43       |
| 255 | (770) 555-1861 | (725) 555-3243 | 2023 | 7     | 28  | 49       |
| 261 | (031) 555-6622 | (910) 555-3251 | 2023 | 7     | 28  | 38       |
| 279 | (826) 555-1652 | (066) 555-9701 | 2023 | 7     | 28  | 55       |
| 281 | (338) 555-6650 | (704) 555-2131 | 2023 | 7     | 28  | 54       |
| 300 | (558) 555-9741 | (801) 555-9266 | 2023 | 7     | 29  | 45       |
| 301 | (211) 555-3762 | (956) 555-1395 | 2023 | 7     | 29  | 47       |
| 309 | (547) 555-8781 | (337) 555-9411 | 2023 | 7     | 29  | 46       |
| 313 | (344) 555-9601 | (340) 555-8872 | 2023 | 7     | 29  | 48       |
| 317 | (910) 555-3251 | (579) 555-5030 | 2023 | 7     | 29  | 32       |
| 324 | (831) 555-0973 | (033) 555-9033 | 2023 | 7     | 29  | 57       |
| 353 | (901) 555-8732 | (487) 555-5865 | 2023 | 7     | 29  | 35       |
| 382 | (455) 555-5315 | (234) 555-1294 | 2023 | 7     | 30  | 49       |
| 394 | (007) 555-2874 | (956) 555-1395 | 2023 | 7     | 30  | 53       |
| 395 | (367) 555-5533 | (455) 555-5315 | 2023 | 7     | 30  | 31       |
| 402 | (337) 555-9411 | (060) 555-2489 | 2023 | 7     | 30  | 30       |
| 411 | (033) 555-9033 | (293) 555-1469 | 2023 | 7     | 30  | 39       |
| 436 | (973) 555-3809 | (959) 555-4871 | 2023 | 7     | 30  | 46       |
| 437 | (356) 555-6641 | (558) 555-9741 | 2023 | 7     | 30  | 34       |
| 460 | (676) 555-6554 | (608) 555-9302 | 2023 | 7     | 31  | 47       |
+-----+----------------+----------------+------+-------+-----+----------+
sqlite> SELECT * FROM phone_calls WHERE duration < 60 and day = 28;
+-----+----------------+----------------+------+-------+-----+----------+
| id  |     caller     |    receiver    | year | month | day | duration |
+-----+----------------+----------------+------+-------+-----+----------+
| 221 | (130) 555-0289 | (996) 555-8899 | 2023 | 7     | 28  | 51       |
| 224 | (499) 555-9472 | (892) 555-8872 | 2023 | 7     | 28  | 36       |
| 233 | (367) 555-5533 | (375) 555-8161 | 2023 | 7     | 28  | 45       |
| 251 | (499) 555-9472 | (717) 555-1342 | 2023 | 7     | 28  | 50       |
| 254 | (286) 555-6063 | (676) 555-6554 | 2023 | 7     | 28  | 43       |
| 255 | (770) 555-1861 | (725) 555-3243 | 2023 | 7     | 28  | 49       |
| 261 | (031) 555-6622 | (910) 555-3251 | 2023 | 7     | 28  | 38       |
| 279 | (826) 555-1652 | (066) 555-9701 | 2023 | 7     | 28  | 55       |
| 281 | (338) 555-6650 | (704) 555-2131 | 2023 | 7     | 28  | 54       |
+-----+----------------+----------------+------+-------+-----+----------+
sqlite> SELECT * FROM people WHERE INSTR(phone_number, 575) > 0;
sqlite> SELECT * FROM people WHERE INSTR(phone_number, "575") > 0;
sqlite> SELECT * FROM people WHERE INSTR(phone_number, "(") > 0;
+--------+-------------+----------------+-----------------+---------------+
|   id   |    name     |  phone_number  | passport_number | license_plate |
+--------+-------------+----------------+-----------------+---------------+
| 205082 | Pamela      | (113) 555-7544 | 1050247273      | 5CIO816       |
| 210245 | Jordan      | (328) 555-9658 | 7951366683      | HW0488P       |
| 210641 | Heather     | (502) 555-6712 | 4356447308      | NULL          |
| 221103 | Vanessa     | (725) 555-4692 | 2963008352      | 5P2BI95       |
| 222194 | Ronald      | (321) 555-6083 | 4959515588      | 9XPY28H       |
| 225259 | Sean        | (867) 555-9103 | 4377966420      | NULL          |
| 229076 | Aaron       | (420) 555-5821 | 9852889341      | NULL          |
| 229572 | Ernest      | (789) 555-8833 | 6216255522      | C3S4W87       |
| 230917 | Karen       | (841) 555-3728 | 5031682798      | IH61GO8       |
| 231387 | Margaret    | (068) 555-0183 | 1782675901      | 60563QT       |
| 233575 | Gabriel     | (243) 555-7229 | 9747563214      | B49OR81       |
| 242207 | Louis       | (749) 555-4874 | 5361280978      | NULL          |
| 243696 | Barry       | (301) 555-4174 | 7526138472      | 6P58WS2       |
| 250185 | Abigail     | (183) 555-7322 | NULL            | Q98UB5W       |
| 250277 | James       | (676) 555-6554 | 2438825627      | Q13SVG6       |
| 251693 | Larry       | (892) 555-8872 | 2312901747      | O268ZZ0       |
| 253397 | Kristina    | (918) 555-2946 | 6131360461      | P743G7C       |
| 255860 | Virginia    | (478) 555-1565 | 3866596772      | NULL          |
| 265512 | Juan        | (337) 555-9411 | 7020183712      | 8BB36NX       |
| 267176 | Cynthia     | (458) 555-8396 | 2169423415      | NULL          |
| 271242 | Albert      | (042) 555-1772 | NULL            | 673020C       |
| 274388 | Laura       | (067) 555-4133 | 1801324150      | 4406M71       |
| 274893 | Christina   | (547) 555-8781 | 4322787338      | 79X5400       |
| 279793 | Cheryl      | (450) 555-8297 | NULL            | VWJ25E5       |
| 280744 | Eugene      | (666) 555-5774 | 9584465633      | 47592FJ       |
| 282425 | Martha      | (007) 555-2874 | NULL            | O784M2U       |
| 293753 | Ryan        | (901) 555-8732 | NULL            | 0WZS77X       |
| 313696 | Megan       | (222) 555-8026 | 4879021885      | NULL          |
| 313837 | Tyler       | (660) 555-3095 | 8613298074      | 3H26E71       |
| 315221 | Gregory     | (022) 555-4052 | 3355598951      | V4C670D       |
| 316531 | Eric        | (869) 555-6696 | NULL            | X8T96JM       |
| 319800 | Jacob       | (037) 555-8455 | 5584283945      | P45A66L       |
| 325548 | Brandon     | (771) 555-6667 | 7874488539      | R3G7486       |
| 331126 | Brenda      | (831) 555-0973 | 1139561952      | N7M42GP       |
| 331484 | Judy        | (918) 555-5327 | 1236213682      | KGG82IR       |
| 336397 | Joan        | (711) 555-3007 | NULL            | L476K20       |
| 337221 | Christine   | (608) 555-9302 | NULL            | XE95071       |
| 341739 | Rebecca     | (891) 555-5672 | 6264773605      | NULL          |
| 343408 | Grace       | (932) 555-1504 | 9826028703      | HXA8903       |
| 354903 | Marilyn     | (568) 555-3190 | 7441135547      | 0R0FW39       |
| 358382 | Walter      | (544) 555-8087 | 4223654265      | 82456Y8       |
| 360948 | Carolyn     | (234) 555-1294 | 3925120216      | P14PE2Q       |
| 363991 | Christopher | (775) 555-7584 | 3249120117      | 91UQ3NC       |
| 368533 | Kayla       | (487) 555-5865 | 4674590724      | 2729MD0       |
| 372684 | Alexander   | (801) 555-9266 | NULL            | 8P9NEU9       |
| 375525 | Noah        | (959) 555-4871 | 1095374669      | 11J91FW       |
| 379932 | Joshua      | (267) 555-2761 | 3761239013      | 1FBL6TH       |
| 384637 | Kelly       | (496) 555-2096 | 4041498045      | NULL          |
| 395717 | Kenny       | (826) 555-1652 | 9878712108      | 30G67EN       |
| 396669 | Iman        | (829) 555-5269 | 7049073643      | L93JTIZ       |
| 398010 | Sofia       | (130) 555-0289 | 1695452385      | G412CB7       |
| 402368 | Lauren      | (707) 555-7535 | 5551547908      | 3899SY4       |
| 404704 | Catherine   | (020) 555-6715 | NULL            | NA31S0K       |
| 419774 | Teresa      | (041) 555-4011 | 8699553201      | HW0BF87       |
| 423393 | Carol       | (168) 555-6126 | 6128131458      | 81MNC9R       |
| 430845 | Ruth        | (772) 555-5770 | NULL            | HZB4129       |
| 438727 | Benista     | (338) 555-6650 | 9586786673      | 8X428L0       |
| 440007 | Sara        | (340) 555-8872 | 3412604728      | 99A843C       |
| 449774 | Taylor      | (286) 555-6063 | 1988161715      | 1106N58       |
| 458378 | Brooke      | (122) 555-4581 | 4408372428      | QX4YZN3       |
| 467400 | Luca        | (389) 555-5198 | 8496433585      | 4328GD8       |
| 477251 | Billy       | (060) 555-2489 | 9290922261      | 2HB7G9N       |
| 484375 | Anna        | (704) 555-2131 | NULL            | NULL          |
| 485785 | Barbara     | (367) 555-0409 | 1165086731      | HN8I106       |
| 486361 | Wayne       | (056) 555-0309 | NULL            | D965M59       |
| 490439 | Jesse       | (693) 555-7986 | NULL            | 608027W       |
| 495558 | Stephanie   | (204) 555-4136 | 7712200330      | 2001OV9       |
| 504758 | Samantha    | (956) 555-1395 | 6720918005      | E9PF99X       |
| 505688 | Jean        | (695) 555-0348 | 1682575122      | JN7K44M       |
| 506435 | Zachary     | (839) 555-1757 | NULL            | 5810O6V       |
| 514354 | Diana       | (770) 555-1861 | 3592750733      | 322W7JE       |
| 518594 | Randy       | (984) 555-5921 | 7538263720      | 106OW2W       |
| 526940 | Hannah      | (877) 555-0523 | 3366196639      | 88CEO92       |
| 534459 | Olivia      | (258) 555-5627 | 6632213958      | X273ZK9       |
| 537582 | Bradley     | (873) 555-8470 | 1526109096      | 9Y0JT4U       |
| 539107 | Joseph      | (238) 555-5554 | 4328444220      | NULL          |
| 539960 | Theresa     | (190) 555-4928 | 1833124350      | 668A8SL       |
| 542503 | Michael     | (529) 555-7276 | 6117294637      | HOD8639       |
| 545303 | Nicholas    | (095) 555-3639 | 2581746522      | 5840J5X       |
| 548858 | Kathleen    | (960) 555-2044 | 2628207874      | PF37ZVK       |
| 559765 | William     | (324) 555-0416 | NULL            | FA63H32       |
| 560886 | Kelsey      | (499) 555-9472 | 8294398571      | 0NTHK55       |
| 561160 | Kathryn     | (609) 555-5876 | 6121106406      | 4ZY7I8T       |
| 567218 | Jack        | (996) 555-8899 | 9029462229      | 52R0Y8U       |
| 572028 | Paul        | (357) 555-0246 | 9143726159      | R64E41W       |
| 579698 | Mary        | (188) 555-4719 | NULL            | C194752       |
| 580086 | Betty       | (233) 555-0473 | 2400516856      | 47KK91C       |
| 585903 | Arthur      | (394) 555-3247 | 7884829354      | 64I1286       |
| 586942 | Justin      | (721) 555-1131 | 9608210024      | NULL          |
| 591369 | Dylan       | (380) 555-4380 | 5776544886      | DN6Z7FH       |
| 600585 | Bryan       | (696) 555-9195 | 3833243751      | 8911U63       |
| 604497 | Ralph       | (771) 555-7880 | 6464352048      | 3933NUH       |
| 606219 | Jessica     | (786) 555-5321 | 7118667746      | ET017P4       |
| 612949 | Benjamin    | (680) 555-4935 | NULL            | I8S932C       |
| 617509 | Jerry       | (558) 555-9741 | 3816396248      | 4DD691O       |
| 620295 | Janet       | (464) 555-2162 | 2160709651      | P72XP87       |
| 620297 | Peter       | (751) 555-6567 | 9224308981      | N507616       |
| 622544 | Joe         | (452) 555-8550 | NULL            | 24X1AQM       |
| 626361 | Melissa     | (717) 555-1342 | 7834357192      | NULL          |
| 630782 | Alexis      | (814) 555-5180 | 5310124622      | X4G3938       |
| 632023 | Amanda      | (821) 555-5262 | 1618186613      | RS7I6A0       |
| 634238 | Sandra      | (604) 555-0153 | NULL            | 2BDU20B       |
| 637069 | Michelle    | (738) 555-2050 | 4590049635      | 52E25A9       |
| 639344 | Charlotte   | (455) 555-5315 | 7226911797      | Z5FH038       |
| 650560 | Rose        | (336) 555-0077 | 8909375052      | O7JQ1SA       |
| 651714 | Edward      | (328) 555-1152 | 1540955065      | 130LD9Z       |
| 652398 | Carl        | (704) 555-5790 | 7771405611      | 81MZ921       |
| 652412 | Denise      | (994) 555-3373 | 4001449165      | NRYN856       |
| 658630 | Brittany    | (398) 555-1013 | NULL            | 6T124Q8       |
| 660982 | Thomas      | (286) 555-0131 | 6034823042      | WD5M8I6       |
| 676919 | Steven      | (195) 555-4173 | 1151340634      | 5VFD6G0       |
| 677698 | John        | (016) 555-9166 | 8174538026      | 4468KVT       |
| 681821 | David       | (260) 555-0610 | 8834222028      | SF5001S       |
| 682850 | Ethan       | (594) 555-6254 | 2996517496      | NAW9653       |
| 685894 | Donald      | (971) 555-2231 | NULL            | R964VP9       |
| 686048 | Bruce       | (367) 555-5533 | 5773159633      | 94KL13X       |
| 692353 | Jonathan    | (211) 555-3762 | 2047409662      | 7627B71       |
| 697106 | Henry       | (645) 555-8082 | 3699913849      | 6590Q1M       |
| 704850 | Rachel      | (006) 555-0505 | NULL            | 7Z8B130       |
| 712712 | Jacqueline  | (910) 555-3251 | NULL            | 43V0R5D       |
| 717401 | Terry       | (730) 555-5115 | 3564659888      | 5209A97       |
| 718152 | Jason       | (636) 555-4198 | 2818150870      | 8666X39       |
| 719061 | Ashley      | (770) 555-1196 | 1038053449      | NULL          |
| 720244 | Dorothy     | (047) 555-0577 | 9135709773      | 7T807V5       |
| 730171 | Ann         | (601) 555-6795 | 4215752756      | 84869TJ       |
| 734908 | Maria       | (492) 555-5484 | NULL            | 3N39WQN       |
| 743806 | Sharon      | (343) 555-0167 | 9687940003      | 9N79I17       |
| 745650 | Sophia      | (027) 555-1068 | 3642612721      | 13FNH73       |
| 748674 | Jeremy      | (194) 555-5027 | 1207566299      | V47T75I       |
| 750165 | Daniel      | (971) 555-6468 | 7597790505      | FLFN3W0       |
| 753885 | Jennifer    | (911) 555-0229 | 7378796210      | 1K44SN8       |
| 754943 | Nathan      | (293) 555-1469 | 8914039923      | 11WB3I6       |
| 757606 | Douglas     | (491) 555-2505 | 3231999695      | 1FW4EUJ       |
| 762248 | Kyle        | (035) 555-2997 | NULL            | 2M2Y681       |
| 764352 | Scott       | (801) 555-8906 | 6264781665      | 68K1239       |
| 764823 | Keith       | (209) 555-7806 | 9698118788      | 630U2R7       |
| 768035 | Diane       | (147) 555-6818 | 6099879058      | WR2G758       |
| 769190 | Charles     | (427) 555-0556 | 3915621712      | R12SA4D       |
| 779942 | Harold      | (669) 555-6918 | NULL            | DVS39US       |
| 780088 | Nicole      | (123) 555-5144 | 3835860232      | 91S1K32       |
| 788213 | Emily       | (406) 555-4440 | 6263461050      | Y340743       |
| 788911 | Gloria      | (973) 555-3809 | 2835165196      | O010420       |
| 795190 | Frances     | (059) 555-4698 | 5138876283      | 97O6H62       |
| 804716 | Kevin       | (618) 555-9856 | NULL            | QDS31M6       |
| 809194 | Alice       | (031) 555-9915 | 1679711307      | 1M92998       |
| 809265 | Jose        | (914) 555-5994 | 9183348466      | NULL          |
| 818095 | Patricia    | (594) 555-2863 | 5806941094      | R059OD5       |
| 821978 | Beverly     | (342) 555-9260 | 2793107431      | NULL          |
| 828675 | Nancy       | (998) 555-1979 | 7021171868      | 878Z799       |
| 832111 | Emma        | (329) 555-5870 | 7968707324      | 1628C65       |
| 837455 | Andrew      | (579) 555-5030 | NULL            | W2CT78U       |
| 847116 | Philip      | (725) 555-3243 | 3391710505      | GW362R6       |
| 850016 | Mark        | (873) 555-3868 | 4631067354      | YD7376W       |
| 857325 | Timothy     | (962) 555-5827 | 7178034193      | 3AML2V7       |
| 864400 | Robin       | (375) 555-8161 | NULL            | 4V16VO0       |
| 893762 | Janice      | (033) 555-9033 | NULL            | 61226BT       |
| 907148 | Carina      | (031) 555-6622 | 9628244268      | Q12B3Z3       |
| 910162 | Brian       | (636) 555-3370 | 2329158653      | Y46HW88       |
| 920334 | Stephen     | (247) 555-7205 | NULL            | 99N25L1       |
| 926715 | Frank       | (356) 555-6641 | 8336437534      | 207W38T       |
| 929343 | Andrea      | (368) 555-3561 | 7954314541      | 245THL6       |
| 937274 | Raymond     | (125) 555-8030 | NULL            | Y18DLY3       |
| 948985 | Kaelyn      | (098) 555-1164 | 8304650265      | I449449       |
| 953420 | Amy         | (670) 555-8598 | 9355133130      | NULL          |
| 953679 | Doris       | (066) 555-9701 | 7214083635      | M51FA04       |
| 955017 | Sarah       | (505) 555-5698 | 9172951504      | 47602K4       |
| 962494 | Johnny      | (117) 555-6630 | 7918203533      | 3JC5R39       |
| 969163 | Willie      | (741) 555-1748 | 4158550933      | NULL          |
| 975354 | Logan       | (219) 555-0139 | 9692634019      | 6866W0M       |
| 985497 | Deborah     | (344) 555-9601 | 8714200946      | 10I5658       |
| 985539 | Lisa        | (118) 555-8106 | NULL            | B3VSJVF       |
| 994229 | Angela      | (310) 555-8568 | 9920757687      | SS458D7       |
+--------+-------------+----------------+-----------------+---------------+
sqlite> SELECT * FROM people WHERE INSTR(phone_number, "(575)") > 0;
sqlite> SELECT * FROM people WHERE INSTR(phone_number, "8161") > 0;
+--------+-------+----------------+-----------------+---------------+
|   id   | name  |  phone_number  | passport_number | license_plate |
+--------+-------+----------------+-----------------+---------------+
| 864400 | Robin | (375) 555-8161 | NULL            | 4V16VO0       |
+--------+-------+----------------+-----------------+---------------+

