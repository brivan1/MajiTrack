CREATE DATABASE IF NOT EXISTS MajiTrack_db;
USE MajiTrack_db;

CREATE TABLE IF NOT EXISTS users_conservation_tips (
    tip_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(256),
    body TEXT
);