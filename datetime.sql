CREATE TABLE people(name VARCHAR(100),
                         birthdate DATE, birthtime TIME,
                                                   birthdt DATETIME);


SELECT name,
       concat(monthname(birthdate)," ",dayofmonth(birthdate)," ",year(birthdate)) AS "Birth Day"
FROM people;


SELECT date_format('2009-10-04', '%W %M %Y');


SELECT date_format(birthdt,'was born on %m/%d/%Y at %h:%m')
FROM people;

