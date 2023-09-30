--Retrieve all usernames and their corresponding created_at timestamps:
SELECT username, created_at
FROM users;

--Retrieve the image URL and username of all photos:
SELECT p.image_url, u.username
FROM photos p
JOIN users u ON p.user_id = u.id;

--Insert a new user into the users table:
INSERT INTO users (username, created_at)
VALUES ('NewUser123', NOW());

--Update the comment text for a specific comment:
UPDATE comments
SET comment_text = 'Updated comment'
WHERE id = 1; 

--Delete a specific comment:
DELETE FROM comments
WHERE id = 2; -- Delete the comment with id 2

--Retrieve the number of likes for each photo:
SELECT p.id AS photo_id, COUNT(l.user_id) AS like_count
FROM photos p
LEFT JOIN likes l ON p.id = l.photo_id
GROUP BY p.id;

--Retrieve the photos with a specific tag (e.g., 'Explore'):
SELECT p.image_url
FROM photos p
JOIN photo_tags pt ON p.id = pt.photo_id
JOIN tags t ON pt.tag_id = t.id
WHERE t.tag_name = 'Explore';

--Increment the like count for a specific photo:
UPDATE photos
SET like_count = like_count + 1
WHERE id = 1; -- Increment the like count for the photo with id 1

--Retrieve all comments for a specific photo (e.g., photo with id 3):
SELECT c.comment_text, u.username
FROM comments c
JOIN users u ON c.user_id = u.id
WHERE c.photo_id = 3;

--Insert a new comment for a specific photo:
INSERT INTO comments (comment_text, user_id, photo_id, created_at)
VALUES ('Awesome photo!', 2, 3, NOW());


