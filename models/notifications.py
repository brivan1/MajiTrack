#!/usr/bin/python3

class Notification:
    def __init__(self, notification_id, notification_type, recipient_user_id=None,
                 recipient_zone_id=None, send_to_all=False, created_at=None, 
                 sent_at=None, status='pending', message=None):
        self.message = message
        self.notification_id = notification_id
        self.notification_type = notification_type
        self.recipient_user_id = recipient_user_id
        self.recipient_zone_id = recipient_zone_id
        self.send_to_all = send_to_all
        self.created_at = created_at
        self.sent_at = sent_at
        self.status = status

    def send(self):
        # In a real application, this would involve sending the notification
        # via email, push notification, etc.
        print(f"Sending notification to {self.recipient}: {self.message}")
        return True