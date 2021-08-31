create database Instagram_Clone;
use Instagram_Clone;
CREATE TABLE users
(
    id         INTEGER AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT into users(username)
VALUES ('Blue the Cat'),
       ('Charlie Brown'),
       ('Colt Steele'),
        ('Colt Steele');


CREATE TABLE photos
(
    id         INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url  VARCHAR(255) NOT NULL,
    user_id    INTEGER      NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users (id)
);
INSERT INTO photos (image_url, user_id)
VALUES ('/aejrlaern,', 1),
       ('/asdnlsfnern,', 2),
       ('/adklsfjlksdjf,', 3);

CREATE TABLE comments
(
    id           INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    photo_id     INTEGER      NOT NULL,
    user_id      INTEGER      NOT NULL,
    created_at   TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (photo_id) REFERENCES photos (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO comments(comment_text, photo_id, user_id)
VALUES ('Meow!', 1, 2),
       ('Amazing Shot Bro', 3, 2),
       ('OMG I LOVE THIS', 2, 1);

CREATE TABLE likes
(
    user_id    INTEGER NOT NULL,
    photo_id   INTEGER not null,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (photo_id) REFERENCES photos (id),
    Primary KEY (user_id, photo_id)
);

INSERT INTO likes (user_id, photo_id)
VALUES (1, 1),
       (2, 1),
       (1, 2),
       (1, 3),
       (3, 3);
# Wont work because of primary key constraint

CREATE TABLE follows
(
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at  TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users (id),
    FOREIGN KEY (followee_id) REFERENCES users (id),
    PRIMARY KEY (follower_id, followee_id)
);

INSERT INTO follows(follower_id, followee_id)
VALUES (1, 2),
       (1, 3),
       (3, 1),
       (2, 3);
# Wont Duplicate

CREATE TABLE tags
(
    id         INTEGER AUTO_INCREMENT PRIMARY KEY,
    tag_name   VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tags(tag_name)
VALUES ('Cute'),
       ('Wow'),
       ('awesome');



CREATE TABLE photo_tags
(
    photo_id INTEGER NOT NULL,
    tag_id   INTEGER NOT NULL,
    FOREIGN KEY (photo_id) REFERENCES photos (id),
    FOREIGN KEY (tag_id) REFERENCES tags (id),
    PRIMARY KEY (photo_id, tag_id)
);

INSERT INTO photo_tags(photo_id, tag_id)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (3, 2);
