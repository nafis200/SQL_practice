


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO students (student_id, name, city) VALUES
(1, 'Nafis', 'Dhaka'),
(2, 'Rakesh', 'Chittagong'),
(3, 'Alice', 'Khulna'),
(4, 'Bob', 'Sylhet'),
(5, 'Eve', NULL);



CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


INSERT INTO courses (course_id, course_name, student_id) VALUES
(1, 'Database', 1),
(2, 'Networking', 2),
(3, 'Web Development', 1),
(4, 'AI Basics', 3),
(5, 'Machine Learning', NULL);



SELECT name,course_name FROM students as s INNER JOIN courses as p on s.student_id = p.student_id

SELECT * from students NATURAL JOIN courses


SELECT name,course_name from students as s LEFT JOIN courses c on s.student_id = c.student_id 


SELECT name, course_name
FROM students s
CROSS JOIN courses c;
 
SELECT name from students as s LEFT JOIN courses as c on s.student_id = c.student_id WHERE c.course_id IS NULL


SELECT course_name from students as s RIGHT JOIN courses as c on s.student_id = c.student_id
WHERE c.student_id IS NULL



SELECT s.name,count(c.course_id) as total_count from students as s LEFT JOIN courses as c on s.student_id = c.student_id GROUP BY s.name ORDER BY total_count DESC


SELECT c.course_name,count(s.student_id) FROM students as s RIGHT JOIN courses as c on s.student_id = c.student_id GROUP BY c.course_name


SELECT name,city from students as s INNER JOIN  courses as c on s.student_id = c.student_id WHERE s.city = 'Dhaka'

