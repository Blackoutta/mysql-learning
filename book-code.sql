SELECT concat(
  substring(title,1,10),'...'
) AS "Short Title" FROM books;


SELECT replace(
  title,substring(title,1,1),"OMEGA"
) AS "OMEGA POWER" FROM books;

SELECT substring(
  replace(title,'e','3'),1,10
) FROM books;
