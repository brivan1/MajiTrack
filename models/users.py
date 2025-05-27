#!/usr/bin/python3

class User:
    """represents a user of majitrack in the databse"""
    def __init__(self, user_id, first_name, last_name, email, password_hash, phone_number, zone_id, registration_date, phone_number_2, account_balance):
        self.user_id = user_id
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.password_hash = password_hash
        self.phone_number = phone_number
        self.zone_id = zone_id
        self.registration_date = registration_date
        self.phone_number_2 = phone_number_2
        self.account_balance = account_balance
    