
CREATE TABLE studentsInformation(
    student_id serial PRIMARY KEY,
    first_name varchar(10),
    last_name  varchar(20),
    age INTEGER CHECK(age > 0 AND age <= 60),
    grade CHARACTER(2),
    email VARCHAR(50),
    course VARCHAR(50),
    dob DATE,
    blood_group char(5),
    country VARCHAR(30)
)

DROP TABLE IF EXISTS studentsInformation;



INSERT INTO studentsInformation 
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-10', 'O+', 'USA'),
('Alice', 'Smith', 22, 'B', 'Mathematics', 'alice.smith@example.com', '2002-08-15', 'A-', 'UK'),
('Bob', 'Johnson', 21, 'A', 'Physics', 'bob.johnson@example.com', '2003-02-20', 'B+', 'Canada'),
('Emma', 'Brown', 23, 'C', 'Biology', 'emma.brown@example.com', '2001-11-30', 'AB-', 'Australia'),
('Liam', 'Williams', 19, 'A-', 'Chemistry', 'liam.williams@example.com', '2005-04-22', 'O-', 'Germany'),
('Mia', 'Taylor', 20, 'A+', 'Computer Science', 'mia.taylor@example.com', '2004-06-15', 'B+', 'USA'),
('Noah', 'Lee', 22, 'B+', 'Physics', 'noah.lee@example.com', '2002-09-10', 'AB+', 'Canada'),
('Olivia', 'Harris', 21, 'A', 'Chemistry', 'olivia.harris@example.com', '2003-07-25', 'O+', 'Australia');

-- সব স্টুডেন্টের first_name, last_name এবং email দেখাও।
select first_name as "First", last_name as "last", email from studentsInformation


select * from  studentsInformation
 where (age = 20 or age = 22)

SELECT * from studentsInformation where age IN(20, 22)

SELECT * FROM studentsInformation WHERE (country = 'USA' or country = 'Australia')

SELECT * FROM studentsInformation WHERE country IN('USA','Australia')

SELECT * FROM studentsInformation WHERE (country = 'USA' AND grade = 'A+')

SELECT * FROM studentsInformation where (country = 'USA' or country = 'Canada') AND (grade = 'A+' OR grade = 'A')

SELECT * FROM studentsInformation WHERE country IN('USA','Canada') AND grade IN('A+','A')

SELECT * from studentsInformation ORDER BY age DESC

SELECT DISTINCT country FROM studentsInformation;
 
SELECT DISTINCT country, count(*) as total_number FROM studentsInformation GROUP BY country;
 

SELECT * from studentsInformation where age = 20

SELECT * from studentsInformation where grade IN('A+','A') AND country IN('USA','Canada')


SELECT DISTINCT country,count(*) from studentsInformation GROUP BY country

SELECT * from studentsInformation where country NOT IN('USA','Australia')

SELECT * from studentsInformation WHERE email  ILIKE '%John.doe%'

SELECT * from studentsInformation WHERE country IN('USA','Canada') ORDER BY age DESC

SELECT concat(first_name, ' ', last_name) as Full_name from studentsInformation
