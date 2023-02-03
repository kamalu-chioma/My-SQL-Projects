CREATE DATABASE insta_clone;

USE insta_clone;

/*Users*/
CREATE TABLE users(
	id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

/*Photos*/
CREATE TABLE photos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	image_url VARCHAR(355) NOT NULL,
	user_id INT NOT NULL,
	created_dat TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

/*Comments*/
CREATE TABLE comments(
	id INT AUTO_INCREMENT PRIMARY KEY,
	comment_text VARCHAR(255) NOT NULL,
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id)
);

/*Likes*/
CREATE TABLE likes(
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	PRIMARY KEY(user_id,photo_id)
);

/*follows*/
CREATE TABLE follows(
	follower_id INT NOT NULL,
	followee_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (follower_id) REFERENCES users(id),
	FOREIGN KEY (followee_id) REFERENCES users(id),
	PRIMARY KEY(follower_id,followee_id)
);

/*Tags*/
CREATE TABLE tags(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	tag_name VARCHAR(255) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

/*junction table: Photos - Tags*/
CREATE TABLE photo_tags(
	photo_id INT NOT NULL,
	tag_id INT NOT NULL,
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	FOREIGN KEY(tag_id) REFERENCES tags(id),
	PRIMARY KEY(photo_id,tag_id)
);


/*Table Data*/
INSERT INTO users (username, created_at) VALUES 
('Chioma_Kamalu', '2022-12-16 18:22:10.846'), ('Black_Jasmine2', '2022-12-02 17:11:21.417'), ('Quin_Xcii', '2022-12-21 11:12:32.574'), ('Black_Jazmin67', '2022-12-12 17:11:21.417'), ('Pablo_Escobar', '2022-11-21 11:12:32.574');

INSERT INTO photos(image_url, user_id) VALUES 
('http://She.img', 1), ('https://her.org', 2), ('http://pics.biz', 3), ('http://quin.net', 4), ('https://jennings.biz', 5), ('https://pictures.biz', 5);

INSERT INTO follows(follower_id, followee_id) VALUES 
(2, 1), (2, 3), (2, 4), (2, 5), (1, 3 ), (4, 2), (4, 5), (1, 5), (3, 5), (3, 2), (5, 3), (4, 1);

INSERT INTO comments(comment_text, user_id, photo_id) VALUES
('Wow', 2, 1), ('Cool', 3, 1), ('Fine', 5, 1), ('Beautiful', 4, 1), ('Belle', 3, 2), ('Cute', 3, 4), ('Yes', 1, 5);

INSERT INTO likes(user_id,photo_id) VALUES 
(2, 1), (5, 2), (3, 2), (4, 2), (5, 1), (3, 1), (2, 1);

INSERT INTO tags(tag_name) VALUES
('Explore'), ('photography'), ('sunrise'), ('Cute'), ('Allblack'), ('foodie'), ('Alive'), ('beauty'), ('stunning');

INSERT INTO photo_tags(photo_id, tag_id) VALUES (1, 1), (2, 1), (2, 2), (4, 1), (5, 1);
