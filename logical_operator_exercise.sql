SELECT title
FROM books
WHERE released_year < 1980;


SELECT title,
       author_fname,
       author_lname
FROM books
WHERE author_lname = "Eggers"
  OR author_lname ="Chabon";


SELECT title,
       author_fname,
       author_lname,
       released_year
FROM books
WHERE author_lname = "Lahiri"
  AND released_year > 2000;


SELECT title,
       released_year,
       pages
FROM books
WHERE pages BETWEEN 100 AND 200;


SELECT title,
       author_lname
FROM books
WHERE author_lname LIKE "C%"
  OR author_lname LIKE "S%";


SELECT title,
       author_lname
FROM books
WHERE substr(author_lname,1,1) IN ("c",
                                   "s");


SELECT title,
       author_lname,
       CASE
           WHEN title LIKE "%stories%" THEN 'Short Stories'
           WHEN title LIKE "Just Kids"
                OR title LIKE "A Heartbreaking Work%" THEN "Memoir"
           ELSE "Novel"
       END AS "TYPE"
FROM books;


SELECT title,
       author_lname,
       CASE
           WHEN count(title)=1 THEN concat(count(title)," book")
           ELSE concat(count(title), " books")
       END AS "COUNT"
FROM books
GROUP BY author_fname,
         author_lname;

