-- taks 1
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

-- task 2
SELECT dayname(created_at) AS "DAY OF REGISTRATION",
count(dayname(created_at)) AS "COUNT"
FROM users
GROUP BY 1
ORDER BY 2 DESC;

-- task 3
SELECT users.id,users.username, ifnull(photos.id, "NONE") AS "PHOTO ID"
FROM users LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;

--task 4
SELECT
  username,
  photos.image_url,
  photos.id AS photo_id,
  count(*) AS likes
FROM photos
JOIN likes ON likes.photo_id = photos.id
JOIN users ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY 4 DESC;

-- task 5
SELECT count(*)/ (SELECT count(*) FROM users) AS "AVERAGE USER POSTS"
FROM photos;

-- task 6
SELECT tag_name, count(*) AS total
FROM photo_tags
JOIN tags ON tags.id = photo_tags.tag_id
GROUP BY tag_id
ORDER BY 2 DESC
LIMIT 5;

--task 7
SELECT
  username,
  count(*) AS num_liked
FROM users JOIN likes ON users.id = likes.user_id
GROUP BY users.id
HAVING num_liked = (SELECT count(*) FROM photos);
