CREATE DATABASE IF NOT EXISTS MajiTrack_db;

USE MajiTrack_db;

CREATE TABLE IF NOT EXISTS users_complaints (
    complaint_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    zone_id INT, 
    body TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('OPEN', 'CLOSED', 'IN_PROGRESS', 'RESOLVED'),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (zone_id) REFERENCES zones(zone_id)
);