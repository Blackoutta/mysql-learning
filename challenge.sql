SELECT DISTINCT concat("MY FAVORITE AUTHOR IS ",upper(author_lname),"!") AS yell
FROM books
ORDER BY author_lname;

