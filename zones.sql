-- this script creates a database `MajiTrack_db` and a table 'zones'
CREATE DATABASE IF NOT EXISTS MajiTrack_db;
USE MajiTrack_db;

CREATE TABLE IF NOT EXISTS zones (
       zone_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       zone_name VARCHAR(256) NOT NULL UNIQUE,
       zone_description TEXT,
       latitude DECIMAL(10, 6),
       longitude DECIMAL(10, 6)
);