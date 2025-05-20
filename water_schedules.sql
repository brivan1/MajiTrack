-- this script creates a database `MajiTrack_db` and a table 'water_schedules'
CREATE DATABASE IF NOT EXISTS MajiTrack_db;
USE MajiTrack_db;

CREATE TABLE IF NOT EXISTS water_schedules (
       schedule_id INT,
       zone_id INT,
       start_date DATE,
       end_date DATE,
       start_time TIME,
       end_time TIME,
       water_amount DECIMAL(10, 2),
       body TEXT,
       FOREIGN KEY (zone_id) REFERENCES zones(zone_id)
);