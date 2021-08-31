create database adlisterattempt;
use adlisterattempt;



CREATE TABLE users
(
    id         INTEGER AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(255) UNIQUE NOT NULL,
    email      varchar(255) unique not null,
    password   varchar(255)        not null,
    created_at TIMESTAMP DEFAULT NOW()

);


create table Admins
(
    admin_id   int          not null primary key ,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
        foreign key (admin_id) references users (id)
);




CREATE TABLE ads
(
    id          INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id     INTEGER      NOT NULL,
    title       VARCHAR(255) NOT NULL,
    description varchar(250) not null,
    category    varchar(255) not null,
    created_at  TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users (id)
);
INSERT INTO ads (title, user_id, description, category)
VALUES ('Want to Sell my Computer', 1, 'Its Broken AF', 'Tech'),
       ('I want to sell my Car', 2, 'This car is a POS', 'Auto'),
       ('I want to sell some chips', 3, 'Its only a dollar', 'Food');

CREATE TABLE comments
(
    id           INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    ad_id        INTEGER      NOT NULL,
    user_id      INTEGER      NOT NULL,
    created_at   TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO comments(comment_text, ad_id, user_id)
VALUES ('Im interested in that Computer', 1, 2),
       ('I want to buy that car', 3, 2),
       ('Im hungry ill take the chips', 2, 1);

CREATE TABLE likes
(
    user_id    INTEGER NOT NULL,
    ad_id      INTEGER not null,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    Primary KEY (user_id, ad_id)
);


CREATE table categories
(
#     id                   INT          NOT NULL primary key,
    title                 VARCHAR(240) NOT NULL,
    category_description varchar(255),
    ad_id                Integer      not null,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (title) REFERENCES ads(title)

);

INSERT INTO likes (user_id, ad_id)
VALUES (1, 1),
       (2, 1),
       (1, 2),
       (1, 3),
       (3, 3);
# Wont work because of primary key constraint
INSERT into users(username, email, password)
VALUES ('Johnny Cage', 'JohnyCage@gmail.com', '12345'),
       ('Papa Chocolate', 'PapaChocolate@gmail.com', 'Passwprd123'),
       ('Mr Mike', 'Mike123@gmail.com', 'lotus213'),
       ('Michael Jordan', 'jordan@gmail.com', 'jordan123');

INSERT INTO categories( title, category_description, ad_id) VALUES
('Want to sell my Computer','Its Broken',1);
