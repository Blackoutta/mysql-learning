-- task 1
SELECT title, rating
FROM series
JOIN reviews ON series.id = reviews.series_id
LIMIT 15;

-- task 2
SELECT
  title,
  AVG(rating) AS avg_rating
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY 2 ASC;

-- task 3
SELECT first_name, last_name, rating
FROM reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id
LIMIT 15;

-- task 4
SELECT title AS unreviewed_series
FROM series LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

-- task 5
SELECT
  genre, ROUND(AVG(rating),2) AS avg_rating
FROM series JOIN reviews ON series.id = reviews.series_id
GROUP BY 1
ORDER BY 2 ASC;

-- task 6
SELECT
  first_name,
  last_name,
  COUNT(rating) AS "COUNT",
  IFNULL(MIN(rating), 0) AS "MIN",
  IFNULL(MAX(rating),0) AS "MAX",
  IFNULL(ROUND(AVG(rating),2),0) AS "AVG",
  CASE
    WHEN COUNT(rating) >= 10 THEN "POWER USER"
    WHEN count(rating) > 0 THEN "ACTIVE"
    ELSE "INACTIVE"
  END AS "STATUS"
FROM reviewers LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- task 6
SELECT
  first_name,
  last_name,
  COUNT(rating) AS "COUNT",
  IFNULL(MIN(rating), 0) AS "MIN",
  IFNULL(MAX(rating),0) AS "MAX",
  IFNULL(ROUND(AVG(rating),2),0) AS "AVG",
  IF(COUNT(rating) > 0, "ACTIVE", "INACTIVE") AS STATUS
FROM reviewers LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- task 7
SELECT
  title,
  rating,
  CONCAT(first_name," ",last_name) AS reiviewer
FROM reviews
JOIN series ON reviews.series_id = series.id
JOIN reviewers ON reviews.reviewer_id = reviewers.id
ORDER BY 3;
