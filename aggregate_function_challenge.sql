--print the number of books in the database

SELECT DISTINCT count(title) AS "Number of books in the database"
FROM books;

--how many books were released in each year

SELECT DISTINCT released_year,
                count(title) AS "How many books were released in each year"
FROM books
GROUP BY released_year;

--print out the total number of books in stock

SELECT sum(stock_quantity) AS "Number of books in stock"
FROM books;

--find the average released year for each author

SELECT author_fname,
       author_lname,
       avg(released_year) AS "Average released year"
FROM books
GROUP BY author_fname,
         author_lname;

-- find OUT the FULL name OF the author who wrote the longest book

SELECT concat(author_fname," ",author_lname) AS "Author who wrote the longest book",
       pages
FROM books -- GROUP BY author_fname,
--          author_lname
ORDER BY 2 DESC
LIMIT 1;


SELECT concat(author_fname,' ',author_lname) AS "Author who wrote the longest book",
       pages
FROM books
WHERE pages=
    (SELECT max(pages)
     FROM books);

--In each year, how many books were released and what's the average number of pages written?

SELECT released_year AS "year",
       count(DISTINCT title) AS "# books",
       avg(pages) AS "avg pages"
FROM books
GROUP BY released_year;

