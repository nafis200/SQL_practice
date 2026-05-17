Practice Database
students
student_id	name	city	marks
1	Nafis	Dhaka	85
2	Rakesh	Chittagong	72
3	Alice	Khulna	90
4	Bob	Sylhet	65
5	Eve	Dhaka	95
courses
course_id	course_name	student_id
1	Database	1
2	Networking	2
3	Web Development	1
4	AI Basics	3
5	Machine Learning	5
Beginner Subquery Practice
1. Find students whose marks are greater than average marks
Expected Output
name
Nafis
Alice
Eve
Hint

Use:

AVG(marks)

inside subquery.

2. Find students who live in the same city as Eve
Expected Output
name
Nafis
Eve
Hint

First find Eve's city using subquery.

3. Find students who enrolled in any course
Expected Output
name
Nafis
Rakesh
Alice
Eve
Hint

Use:

IN
4. Find students who did NOT enroll in any course
Expected Output
name
Bob
Hint

Use:

NOT IN
5. Find student with highest marks
Expected Output
name	marks
Eve	95
Hint

Use:

MAX(marks)

inside subquery.

Medium Level Practice
6. Find students whose marks are less than Alice's marks
Expected Output
name
Nafis
Rakesh
Bob
7. Find course names taken by students from Dhaka
Expected Output
course_name
Database
Web Development
Machine Learning
8. Find second highest marks
Expected Output
marks
90
Hint

Use nested subquery.

9. Find students who have more marks than all students from Dhaka
Expected Output
name
Alice
10. Find students who are not from the city with lowest average marks

(try yourself 😄)

Hard Practice
11. Find students who take more than one course
Expected Output
name
Nafis
Hint

Use:

GROUP BY

with subquery.

12. Find course taken by student with highest marks
Expected Output
course_name
Machine Learning
13. Find cities where average marks are greater than overall average marks
Hint

Need:

GROUP BY
AVG()
subquery together
14. Find students whose marks equal to city-wise maximum marks
Hint

Correlated subquery practice.

15. Find students who do not take Database course
Expected Output
name
Rakesh
Alice
Bob
Eve