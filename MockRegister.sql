create database Registration;

use Registration;
CREATE TABLE employee (
    id int(3) NOT NULL,
    first_name varchar(20) DEFAULT NULL,
    last_name varchar(20) DEFAULT NULL,
    username varchar(250) DEFAULT NULL,
    password varchar(20) DEFAULT NULL,
    adress varchar(45) DEFAULT NULL,
    contact varchar(45) DEFAULT NULL,
    PRIMARY KEY (id)
 )ENGINE=InnoDB DEFAULT  CHAR SET = utf8mb4 COLLATE =utf8mb4_0900_ai_ci;
SELECT * From employee;
