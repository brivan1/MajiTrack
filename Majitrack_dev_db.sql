-- prepares a MySQL server for the project

CREATE DATABASE IF NOT EXISTS MajiTrack_db;
CREATE USER IF NOT EXISTS 'Majitrack_dev'@'localhost' IDENTIFIED BY 'H2OTrack';
GRANT ALL PRIVILEGES ON `MajiTrack_db`.* TO 'Majitrack_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'Majitrack_dev'@'localhost';
FLUSH PRIVILEGES;