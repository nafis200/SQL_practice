

CREATE TABLE students (
 student_id SERIAL PRIMARY KEY,
 first_name VARCHAR(30) NOT NULL,
 last_name VARCHAR(30),
 age INT,
 grade CHAR(2),
 course VARCHAR(30),
 email VARCHAR(30),
 dob DATE,
 blood_group VARCHAR(5),
 country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES 
('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-10', 'O+', 'USA'),
('Alice', 'Smith', 22, 'B', 'Mathematics', 'alice.smith@example.com', '2002-08-15', 'A-', 'UK'),
('Bob', 'Johnson', 21, 'A', 'Physics', 'bob.johnson@example.com', '2003-02-20', 'B+', 'Canada'),
('Emma', 'Brown', 23, 'C', 'Biology', 'emma.brown@example.com', '2001-11-30', 'AB-', 'Australia'),
('Liam', 'Williams', 19, 'A-', 'Chemistry', 'liam.williams@example.com', '2005-04-22', 'O-', 'Germany');

SELECT * FROM students

SELECT email from students

SELECT email,age from students

-- allis

SELECT email as "student Email",age from students

-- sort the order

SELECT * FROM students ORDER BY first_name ASC


-- unique contry

SELECT DISTINCT country from students


SELECT * from students 
  where country= 'USA'

SELECT * from students 
  where country= 'USA' AND grade='A+'

SELECT * from students 
  where (country= 'USA' or country='Australia') AND grade='A+'

SELECT * from students 
  where (country= 'USA' or country='Australia') AND age=20

SELECT * from students 
  where (country= 'USA' or country='Australia') AND age!=20