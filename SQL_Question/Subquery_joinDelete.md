Q9:

1️⃣ Table Setup & Sample Data
Tables:
students
student_id	name	city	age
1	Abrar	Dhaka	22
2	Nabil	Chittagong	23
3	Tanvir	Dhaka	21
4	Rafi	Sylhet	24
courses
course_id	student_id	course_name	fee
101	1	Math	500
102	1	English	400
103	2	Physics	600
104	3	Chemistry	550
105	4	Biology	450
teachers
teacher_id	name	department
201	Mr. Rahman	Math
202	Ms. Fatema	Physics
203	Mr. Karim	Biology
________________________________________
2️⃣ SQL Practice Questions
A. DELETE / REMOVE / UPDATE
1.	Delete all students who are from Sylhet.
Test Case:
o	Input: Sylhet students exist
o	Expected: Only students with city != 'Sylhet' remain
2.	Update the fee of the Math course to 550.
Test Case:
o	Input: Fee of Math course is 500
o	Expected: After update, fee = 550 for Math course
3.	Remove all courses for student_id 2.
Test Case:
o	Input: Student 2 has Physics
o	Expected: Courses table should no longer contain student_id 2
________________________________________
B. JOIN Questions
4.	List all students with their course names.
Test Case:
o	Input: 4 students, 5 courses
o	Expected: Student names repeated if multiple courses
5.	List all students and course names, even if they have no courses.
Test Case:
o	Input: Add a student_id = 5 with no courses
o	Expected: Student 5 should appear with NULL for course_name
6.	List all students with teacher name for their course (assume each course is assigned to a teacher by department matching course).
Test Case:
o	Input: Courses assigned to teacher by department
o	Expected: Students paired with their teacher names
________________________________________
C. Subquery Questions
7.	Find the student(s) who have the highest fee course.
Test Case:
o	Input: Max fee = 600 (Physics)
o	Expected: Student 2 returned
8.	List students whose fee > average fee.
Test Case:
o	Input: Calculate average fee
o	Expected: Only students with course fee > average
9.	Find courses where student age < average age of all students.
Test Case:
o	Input: Avg age = 22.5
o	Expected: Only courses of students aged < 22.5
________________________________________
D. System Design / Junior Developer Type
10.	Design a query to update city to ‘Dhaka’ for all students who are taking Chemistry.
Test Case:
o	Input: Student 3 is taking Chemistry and currently city = Dhaka
o	Expected: City updated correctly (or remains Dhaka if already)
11.	Delete all courses where fee < 500.
Test Case:
o	Input: Courses English=400, Biology=450
o	Expected: Only Math, Physics, Chemistry remain
12.	Using subquery, list students who have more than 1 course.
Test Case:
o	Input: Student 1 has 2 courses
o	Expected: Only student 1 returned


Subquery Practice Questions
🟢 Easy
1.	Find the student(s) with the maximum age.
o	Test Case: Max age = 24 → student Rafi
o	Explanation: Covers MAX() aggregate in a subquery
2.	Find courses with fee greater than 500.
o	Test Case: Physics=600, Chemistry=550 → both returned
o	Explanation: Simple subquery in WHERE or IN
3.	List students who live in the same city as student_id = 1.
o	Test Case: student 1 = Dhaka → Abrar, Tanvir
o	Explanation: Subquery to fetch reference city
4.	Find students whose age is equal to the youngest student.
o	Test Case: Min age = 21 → Tanvir
o	Explanation: Subquery with MIN()
________________________________________
🟡 Medium
5.	List students taking courses with fee higher than the average fee.
o	Test Case: Avg fee = 500 → Physics=600, Chemistry=550
o	Explanation: Use AVG() in subquery
6.	Find all courses taken by students older than 22.
o	Test Case: Students older than 22 → Nabil(23), Rafi(24)
o	Explanation: Subquery in WHERE student_id IN (...)
7.	Find students who take exactly 2 courses.
o	Test Case: Student 1 has 2 courses → Abrar
o	Explanation: Subquery with GROUP BY + HAVING COUNT()
8.	List students whose course fee is equal to the highest fee in their city.
o	Test Case: Highest fee in Dhaka = Chemistry 550 → Tanvir
o	Explanation: Subquery with correlation
________________________________________
🔴 Hard
9.	Find students who take all courses offered by student_id = 1.
o	Test Case: student 1 courses = Math, English → Only return students taking both
o	Explanation: Requires NOT EXISTS or ALL subquery
10.	Find courses where the student’s age is greater than the average age of students taking that course’s department (join with teacher).
o	Test Case: Course=Physics, student age=23, avg age in Physics dept=23 → check > avg
o	Explanation: Correlated subquery
11.	List students who do not take any course cheaper than 500.
o	Test Case: Student 1 = 500/400 → not returned because English=400
o	Explanation: Subquery with NOT EXISTS or ALL
12.	Find teachers who teach courses only to students older than 21.
o	Test Case: Teacher Mr. Rahman → students Abrar(22) → returned
o	Explanation: Subquery + correlation + aggregation
13.	Find students whose total course fee is greater than the average total fee of all students.
o	Test Case: Student 1 total = 900, avg total = 650 → student 1 returned
o	Explanation: Subquery for aggregate SUM() per student, then compare to avg
