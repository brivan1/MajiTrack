#!/usr/bin/python3

class Usage:
    def __init__(self, reading_id, reading_date,reading_value, 
                 meter_id, zone_id, user_id, consumption=None):
        self.reading_id = reading_id
        self.reading_date = reading_date
        self.meter_id = meter_id
        self.zone_id = zone_id
        self.user_id = user_id
        self.reading_value = reading_value
        self.consumption = consumption