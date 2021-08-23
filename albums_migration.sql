-- create database codeup_test_db;
USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(50) DEFAULT 'NONE',
    name         VARCHAR(100) NOT NULL,
    release_date  YEAR         NOT NULL,
    sales        int UNSIGNED NOT NULL,
    genre        VARCHAR(100),
    PRIMARY KEY
        (
         id
            )
);


show tables;
DESCRIBE albums;

