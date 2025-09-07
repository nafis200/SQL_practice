
DROP TABLE if EXISTS Students

CREATE TABLE Students (
   student_id SERIAL PRIMARY KEY,
   first_name VARCHAR(50),
   last_name VARCHAR(30),
   age INT CHECK (age > 0 AND age <= 60),
   grade VARCHAR(5),
   course VARCHAR(50),
   email VARCHAR(100),
   dob DATE,
   blood_group VARCHAR(4),
   country VARCHAR(50)
);

INSERT INTO Students (student_id, first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
(1, 'John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-10', 'O+', 'USA'),
(2, 'Alice', 'Smith', 22, 'B', 'Mathematics', 'alice.smith@example.com', '2002-08-15', 'A-', 'UK'),
(3, 'Bob', 'Johnson', 21, 'A', 'Physics', 'bob.johnson@example.com', '2003-02-20', 'B+', 'Canada'),
(4, 'Emma', 'Brown', 23, 'C', 'Biology', 'emma.brown@example.com', '2001-11-30', 'AB-', 'Australia'),
(5, 'Liam', 'Williams', 19, 'A-', 'Chemistry', 'liam.williams@example.com', '2005-04-22', 'O-', 'Germany'),
(6, 'Mia', 'Taylor', 20, 'A+', 'Computer Science', 'mia.taylor@example.com', '2004-06-15', 'B+', 'USA'),
(7, 'Noah', 'Lee', 22, 'B+', 'Physics', 'noah.lee@example.com', '2002-09-10', 'AB+', 'Canada'),
(8, 'Olivia', 'Harris', 21, 'A', 'Chemistry', 'olivia.harris@example.com', '2003-07-25', 'O+', 'Australia');

INSERT INTO Students (student_id, first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
(9, 'Noah', 'Lee', 22, 'B+', 'Physics', ' ', '2002-09-10', 'AB+', 'Canada'),
(10, 'Olivia', 'Harris', 21, 'A', 'Chemistry', ' ', '2003-07-25', 'O+', 'Australia');
INSERT INTO Students (student_id, first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
(11, 'Noah', 'Lee', 22, 'B+', 'Physics', NULL, '2002-09-10', 'AB+', 'Canada'),
(12, 'Olivia', 'Harris', 21, 'A', 'Chemistry', NULL, '2003-07-25', 'O+', 'Australia');

CREATE TABLE Employee (
   emp_id SERIAL PRIMARY KEY,
   emp_name VARCHAR(50),
   department_name VARCHAR(50),
   salary INT
);

INSERT INTO Employee (emp_id, emp_name, department_name, salary)
VALUES
(1, 'Adam', 'HR', 5000),
(2, 'Bella', 'Finance', 6000),
(3, 'Chris', 'HR', 7000),
(4, 'Diana', 'Engineering', 10000),
(5, 'Evan', 'Engineering', 9500),
(6, 'Fiona', 'Finance', 7200),
(7, 'George', 'Sales', 4000),
(8, 'Hannah', 'Sales', 4500);

SELECT country, count(*), avg(age) from Students GROUP BY country

SELECT country, count(*), avg(age) from Students GROUP BY country HAVING avg(age) > 20


SELECT *,COALESCE(email,'email not provide') as "Email" from Students 

SELECT * from Students where (age BETWEEN 19 AND 21)  ORDER BY age ASC

SELECT * from Students WHERE first_name ILIKE '%a'

SELECT *,extract(YEAR from dob) AS birth_date FROM Students

SELECT EXTRACT(YEAR from dob), count(*) AS total_students FROM Students GROUP BY EXTRACT(YEAR from dob) ORDER BY EXTRACT(YEAR from dob)

SELECT 
    EXTRACT(YEAR FROM dob) AS birth_year,
    COUNT(*) AS total_students
FROM Students
GROUP BY birth_year
ORDER BY birth_year;

SELECT max(salary) as max_salary from Employee WHERE  department_name = 'HR'

SELECT * from Employee WHERE salary > (SELECT max(salary) as max_salary from Employee WHERE  department_name = 'HR')

SELECT department_name, SUM(salary) from Employee GROUP BY department_name


SELECT DISTINCT e1.department_name,
       (SELECT SUM(e2.salary)
        FROM Employee e2
        WHERE e2.department_name = e1.department_name) AS dept_salary
FROM Employee e1


CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    department VARCHAR(20),
    salary NUMERIC(10,2),
    hire_date DATE,
    manager_id INT,
    email VARCHAR(50)
);


INSERT INTO employees (first_name, last_name, department, salary, hire_date, manager_id, email) VALUES
('John', 'Doe', 'HR', 50000, '2019-02-15', NULL, 'john.doe@example.com'),
('Alice', 'Smith', 'IT', 75000, '2020-06-01', 1, 'alice.smith@example.com'),
('Bob', 'Johnson', 'Finance', 60000, '2018-03-12', 1, NULL),
('Eve', 'Williams', 'Finance', 80000, '2021-11-25', 3, 'eve.williams@example.com'),
('Charlie', 'Brown', 'IT', 72000, '2017-07-30', 2, NULL),
('David', 'Miller', 'Marketing', 65000, '2022-01-05', 1, 'david.miller@example.com'),
('Sophia', 'Taylor', 'Marketing', 62000, '2019-09-18', 6, NULL),
('Liam', 'Anderson', 'HR', 55000, '2021-04-10', 1, 'liam.anderson@example.com');

SELECT department,count(*),avg(salary) from employees GROUP BY department ORDER BY department



select department,avg(salary) from employees  GROUP BY department HAVING avg(salary) > 65000


SELECT *, extract(YEAR from AGE(CURRENT_DATE,hire_date)) AS "employee year" from employees

SELECT *, COALESCE(email,'email not provide') from employees

SELECT * from employees WHERE department NOT IN('IT','HR')

SELECT * FROM employees WHERE salary != (SELECT MAX(salary) FROM employees)


SELECT * 
FROM employees
WHERE salary <> (SELECT MAX(salary) FROM employees);

SELECT department, MAX(salary) as "Highest salary", MIN(salary) as "Lowest Salary" from employees GROUP BY department

SELECT *, RANK() over(PARTITION BY department ORDER BY salary DESC) as salary_rank from employees 
