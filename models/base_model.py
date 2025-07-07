#!/usr/bin/python3
from datetime import datetime
import uuid

class Basemodel:
    def __init__(self,**kwargs):
        if len(kwargs) == 0:
            self.id = str(uuid.uuid4())
            self.created_at = datetime.now()
            self.updated_at = datetime.now()
        else:
            for key, value in kwargs.items():
                if key == "created_at" or key == "updated_at":
                    value = datetime.datetime.strptime(value, "%Y-%m-%dT%H:%M:%S.%f")
                elif key != "__class__":
                    setattr(self, key, value)
    def __str__(self):
        """returns a string representation of the instance"""
        return (f"[{self.__class__.__name__}] {self.id} {self.__dict__}")
    def save(self):
        """updates the public instance attribute updated_at with the current datetime"""
        self.updated_at = datetime.now()
    def to_dict(self):
        """returns a dictionary containing all keys/values of __dict__ of the instance"""
        new_dict = self.__dict__.copy()
        new_dict["__class__"] = self.__class__.__name__
        return new_dict


            