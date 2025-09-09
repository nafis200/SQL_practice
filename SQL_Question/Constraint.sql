
CREATE TABLE student (
    student_id INT PRIMARY KEY, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE 
);


INSERT INTO student (student_id, first_name, last_name, email) 
VALUES
(1, 'Nafis', 'Ahamed', 'nafis@gmail.com'),
(2, 'Rakesh', 'Biswas', 'rakesh@gmail.com'),
(3, 'Alice', 'Smith', 'alice.smith@gmail.com'),
(4, 'Bob', 'Johnson', 'bob.johnson@gmail.com'),
(5, 'Eve', 'Lee', NULL),  
(6, 'Charlie', 'Brown', 'charlie.brown@gmail.com'),
(7, 'David', 'Miller', 'david.miller@gmail.com'),
(8, 'Sophia', 'Wilson', 'sophia.wilson@gmail.com'),
(9, 'Liam', 'Taylor', 'liam.taylor@gmail.com'),
(10, 'Olivia', 'Anderson', 'olivia.anderson@gmail.com');



CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE
);

INSERT INTO course (course_id, course_name, student_id) VALUES
(101, 'Database Systems', 1),
(102, 'Operating Systems', 2),
(103, 'Algorithms', 3),
(104, 'Networking', 4),
(105, 'AI Basics', 5);

DELETE FROM student WHERE student_id = 1;

SELECT * FROM course
