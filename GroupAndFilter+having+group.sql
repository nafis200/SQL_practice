
-- wrong method
SELECT * from students
   GROUP BY country

SELECT * FROM students

SELECT country from students
   GROUP BY country
   
-- correct method

SELECT country, count(*) from students
   GROUP BY country

SELECT country,count(*),avg(age) from students
   GROUP BY country

SELECT country,avg(age) from students
   GROUP BY country
   HAVING avg(age) > 20

-- having use for group and where use for each 

SELECT extract(year from dob) as birth_year,count(*) from students 
  GROUP BY dob


