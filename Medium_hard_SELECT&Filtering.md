Medium-Hard SQL Practice Questions with Expected Output
Table: studentsInformation (same as your sample)

| student_id | first_name | last_name | age | grade | course | email | dob | blood_group | country |

Q1: Age BETWEEN + ORDER BY

Question:
সব স্টুডেন্ট দেখাও যাদের বয়স 20–23 এর মধ্যে এবং age DESC অর্ডারে সাজাও।

Expected Output:

student_id	first_name	last_name	age	country
4	Emma	Brown	23	Australia
2	Alice	Smith	22	UK
7	Noah	Lee	22	Canada
3	Bob	Johnson	21	Canada
8	Olivia	Harris	21	Australia
1	John	Doe	20	USA
6	Mia	Taylor	20	USA
Q2: NOT IN + DISTINCT

Question:
ইউনিক country দেখাও যেখানে country USA বা Australia নয়।

Expected Output:

country
UK
Canada
Germany
Q3: Complex AND / OR

Question:
সব স্টুডেন্ট দেখাও যারা (grade='B' OR grade='B+') AND (country='Canada' OR country='UK')।

Expected Output:

student_id	first_name	last_name	grade	country
2	Alice	Smith	B	UK
7	Noah	Lee	B+	Canada
Q4: LIKE + Filter

Question:
সব স্টুডেন্ট দেখাও যাদের email ends with 'example.com' এবং course='Physics'।

Expected Output:

student_id	first_name	last_name	email	course
3	Bob	Johnson	bob.johnson@example.com
	Physics
7	Noah	Lee	noah.lee@example.com
	Physics
Q5: Multiple Conditions + Sorting

Question:
সব Chemistry বা Computer Science কোর্সের স্টুডেন্ট দেখাও যাদের age ≤ 21 এবং age ASC অর্ডারে সাজাও।

Expected Output:

student_id	first_name	last_name	course	age
5	Liam	Williams	Chemistry	19
1	John	Doe	Computer Science	20
6	Mia	Taylor	Computer Science	20
8	Olivia	Harris	Chemistry	21
Q6: Aggregation + GROUP BY

Question:
প্রতিটি course অনুযায়ী কতজন স্টুডেন্ট আছে দেখাও।

Expected Output:

course	total_students
Computer Science	2
Mathematics	1
Physics	2
Biology	1
Chemistry	2
Q7: Alias + Concatenation

Question:
সব স্টুডেন্টের first_name + last_name দেখাও, কলাম নাম হবে "Full Name"।

Expected Output:

Full Name
John Doe
Alice Smith
Bob Johnson
Emma Brown
Liam Williams
Mia Taylor
Noah Lee
Olivia Harris
Q8: Subquery Filter

Question:
সব স্টুডেন্ট দেখাও যারা age সবচেয়ে বেশি (max age)।

Expected Output:

student_id	first_name	last_name	age	country
4	Emma	Brown	23	Australia
Q9: Combined AND/OR + NOT

Question:
সব স্টুডেন্ট দেখাও যারা (grade='A+' OR grade='A') AND country NOT IN ('Australia', 'Germany')।

Expected Output:

student_id	first_name	last_name	grade	country
1	John	Doe	A+	USA
3	Bob	Johnson	A	Canada
6	Mia	Taylor	A+	USA
Q10: Complex Filter + Age + Course

Question:
সব স্টুডেন্ট দেখাও যারা (course='Physics' OR course='Chemistry') AND age BETWEEN 21 AND 22 AND country='Canada'।

Expected Output:

student_id	first_name	last_name	course	age	country
3	Bob	Johnson	Physics	21	Canada
7	Noah	Lee	Physics	22	Canada