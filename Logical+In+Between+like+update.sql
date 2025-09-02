
select * from students

SELECT * from students 
  where country != 'USA'

SELECT * from students 
  where NOT country = 'USA'


-- NUll value a special 

-- it is totally wrong
SELECT * FROM students 
  WHERE email = NULL

--   

-- right operation
-- expectional
SELECT * FROM students 
  WHERE email is NULL

SELECT * FROM students 
  WHERE email is NOT NULL

-- null ke replace korbo function

COALESCE(Null,5)

SELECT COALESCE(email,5)

SELECT COALESCE(email, 'email not provided') FROM students;
SELECT COALESCE(email, 'email not provided') as "Email" FROM students;


-- IN, BETWEEN,LIKE, AND ILIKE operators in postgresql

SELECT * FROM students WHERE country = 'USA' or country='Canada' or country = 'UK'

-- simimlar way i write

SELECT * FROM students WHERE country IN('USA','UK','Canada')

SELECT * FROM students WHERE country NOT IN('USA','UK','Canada')

-- range

SELECT * FROM students 
   where age BETWEEN 19 and 21


-- search params

-- last a thakbe
SELECT * from students 
 WHERE first_name LIKE '%a';

--  start e a thakbe.

SELECT * from students 
 WHERE first_name LIKE 'J%';

-- BUt like case insensative

-- start e duita character majkahbe h laste ja
SELECT * from students 
 WHERE first_name LIKE '__h%';

-- start e ja thakbe last character h
SELECT * from students 
 WHERE first_name LIKE '__h';


-- case sensatie na capital small dosent choose
 SELECT * from students 
 WHERE first_name ILIKE '%A';


--  Pagination with Limit Offest And Data Deletation

  SELECT * from students LIMIT 3

-- first 2 ta chara baki gulo daw

 SELECT * from students LIMIT 3 OFFSET 2 

-- pagination logic

 SELECT * from students LIMIT 3 OFFSET 2 * 0

--  delete data

DELETE FROM students
-- all data is remove from table

DELETE FROM students
  where grade ='B'

SELECT * FROM students

-- Update the coloumn


UPDATE students
   set email ='nafisahamed14@gmail.com'
   where email='john.doe@example.com'





