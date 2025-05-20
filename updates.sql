--
CREATE DATABASE IF NOT EXISTS MajiTrack_db;
USE MajiTrack_db;

CREATE TABLE IF NOT EXISTS updates (
    notification_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    notification_type ENUM('BRIEFING', 'SCHEDULE CHANGE', 'OUTAGE', 'ANNOUNCEMENT'),
    title VARCHAR(256),
    body TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    target_zone_id INT, 
    target_user_id INT, 
    FOREIGN KEY (target_zone_id) REFERENCES zones(zone_id),
    FOREIGN KEY (target_user_id) REFERENCES users(user_id)
);