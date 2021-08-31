create database adlister;
use adlister;




CREATE TABLE users
(
    id         INTEGER AUTO_INCREMENT PRIMARY KEY not null ,
    username   VARCHAR(255) UNIQUE NOT NULL,
    password  varchar(255),
    email varchar(255),
    UNIQUE KEY (username)
);

INSERT INTO  users(username, password, email) VALUES
 ('Benjamin Button','Password123','myheadhurts@gmail.com');


CREATE TABLE ads
(
    id         INTEGER AUTO_INCREMENT not null primary key ,
    user_id    INTEGER      NOT NULL,
    title varchar(255),
    description varchar(255),
    category varchar(255),
    created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO ads (id,user_id, title, description, category) VALUES
 (1,1,'IM selling a bike','Its a grey Bike','Bikes'),
(2,2,'Im selling my katana','Its really sharp','Weapons');











