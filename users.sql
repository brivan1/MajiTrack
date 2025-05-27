-- this script creates a database `MajiTrack_db` and a table 'users'
CREATE DATABASE IF NOT EXISTS MajiTrack_db;
USE MajiTrack_db;

CREATE TABLE IF NOT EXISTS users (
       user_id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
       first_name VARCHAR(256) NOT NULL,
       last_name VARCHAR(256) NOT NULL,
       email VARCHAR(256) NOT NULL,
       password VARCHAR(256) NOT NULL,
       phone_number VARCHAR(20) NOT NULL,
       phone_number_2 VARCHAR(20) NOT NULL,
       zone_id INT, 
       registation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       FOREIGN KEY (zone_id) REFERENCES zones(zone_id)
);