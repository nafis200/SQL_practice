ঠিক আছে, Nafis! আমি তোমার জন্য “Basic SELECT & Filtering” টপিকে ২০+ প্র্যাকটিস প্রশ্ন + টেস্ট কেস বানাচ্ছি। তুমি এগুলো প্র্যাকটিস করলে muscle memory অনেক শক্ত হবে। আমি সেগুলো ধাপে ধাপে সাজাচ্ছি।

Students Table Sample Data
student_id	first_name	last_name	age	grade	course	email	dob	blood_group	country
1	John	Doe	20	A+	Computer Science	john.doe@example.com 2004-05-10	O+	USA
2	Alice	Smith	22	B	Mathematics	alice.smith@example.com
	2002-08-15	A-	UK
3	Bob	Johnson	21	A	Physics	bob.johnson@example.com
	2003-02-20	B+	Canada
4	Emma	Brown	23	C	Biology	emma.brown@example.com
	2001-11-30	AB-	Australia
5	Liam	Williams	19	A-	Chemistry	liam.williams@example.com
	2005-04-22	O-	Germany
6	Mia	Taylor	20	A+	Computer Science	mia.taylor@example.com
	2004-06-15	B+	USA
7	Noah	Lee	22	B+	Physics	noah.lee@example.com
	2002-09-10	AB+	Canada
8	Olivia	Harris	21	A	Chemistry	olivia.harris@example.com
	2003-07-25	O+	Australia
Practice Questions (Basic SELECT & Filtering)
1️⃣ Simple SELECT

সব স্টুডেন্টের first_name এবং last_name দেখাও।

সব স্টুডেন্টের email দেখাও।

সব স্টুডেন্টের first_name, last_name এবং email দেখাও।

2️⃣ WHERE Filtering

সব 20 বছরের স্টুডেন্ট দেখাও।

সব 22 বছরের স্টুডেন্ট দেখাও।

সব 21 বা 23 বছরের স্টুডেন্ট দেখাও।

country='USA' এর সব স্টুডেন্ট দেখাও।

country='Australia' এর সব স্টুডেন্ট দেখাও।

country='USA' OR country='Australia' এর সব স্টুডেন্ট দেখাও।

country='USA' AND grade='A+' এর স্টুডেন্ট দেখাও।

age!=20 AND country='Canada' এর স্টুডেন্ট দেখাও।

grade='A+' OR grade='A' AND country='USA' OR country='Canada' এর স্টুডেন্ট দেখাও।

3️⃣ ORDER BY

সব স্টুডেন্টকে first_name অ্যালফাবেটিক অর্ডারে দেখাও।

সব স্টুডেন্টকে age DESCENDING অর্ডারে দেখাও।

4️⃣ DISTINCT & COUNT

ইউনিক দেশগুলো দেখাও।

প্রতিটি দেশের স্টুডেন্ট সংখ্যা দেখাও।

5️⃣ Alias

স্টুডেন্টদের email এবং age দেখাও, যেখানে কলাম নাম হবে "Student Email" এবং "Age of Student"।

স্টুডেন্টদের first_name এবং last_name দেখাও, কলাম নাম হবে "Name"।

6️⃣ Combined Filtering Challenge

সব A+ এবং A গ্রেডের স্টুডেন্ট দেখাও, যারা USA বা Canada এর।

grade='B' OR grade='B+' AND country='Canada' OR country='UK' এর স্টুডেন্ট দেখাও।

সব age>20 AND grade='C' OR grade='A-' এর স্টুডেন্ট দেখাও।

Test Cases Examples

Question: সব 20 বছরের স্টুডেন্ট দেখাও।

Expected Output:

student_id	first_name	last_name	age	grade	country
1	John	Doe	20	A+	USA
6	Mia	Taylor	20	A+	USA

Question: সব grade='A+' OR grade='A' AND country='USA' OR country='Canada' এর স্টুডেন্ট দেখাও।

Expected Output:

student_id	first_name	last_name	grade	country
1	John	Doe	A+	USA
3	Bob	Johnson	A	Canada
6	Mia	Taylor	A+	USA
7	Noah	Lee	B+	Canada

Question: ইউনিক দেশগুলো দেখাও।

Expected Output:

country
USA
UK
Canada
Australia
Germany



Extra 10 Tricky Practice Questions (with Test Cases)

Table: students (previous sample data apply হবে)

Q1: Age filter

সব স্টুডেন্ট দেখাও, যারা 20 থেকে 22 বছরের মধ্যে।

Expected Output:

student_id	first_name	last_name	age	grade	country
1	John	Doe	20	A+	USA
2	Alice	Smith	22	B	UK
3	Bob	Johnson	21	A	Canada
6	Mia	Taylor	20	A+	USA
7	Noah	Lee	22	B+	Canada
8	Olivia	Harris	21	A	Australia
Q2: NOT condition

সব স্টুডেন্ট দেখাও, যারা USA বা Australia ছাড়া।

Expected Output:

student_id	first_name	last_name	country
2	Alice	Smith	UK
3	Bob	Johnson	Canada
5	Liam	Williams	Germany
7	Noah	Lee	Canada
Q3: Complex AND/OR

সব স্টুডেন্ট দেখাও, যারা (grade='A+' OR grade='A') AND (country='USA' OR country='Canada')।

Expected Output:

student_id	first_name	last_name	grade	country
1	John	Doe	A+	USA
3	Bob	Johnson	A	Canada
6	Mia	Taylor	A+	USA
Q4: LIKE operator

সব স্টুডেন্ট দেখাও যাদের email ends with 'example.com'।

Expected Output:
সব স্টুডেন্ট (1–8) দেখাবে, কারণ সব email example.com দিয়ে শেষ হচ্ছে।

Q5: Multiple conditions

সব স্টুডেন্ট দেখাও, যারা Physics বা Chemistry কোর্স করছে AND age<=22।

Expected Output:

student_id	first_name	last_name	course	age
3	Bob	Johnson	Physics	21
5	Liam	Williams	Chemistry	19
7	Noah	Lee	Physics	22
8	Olivia	Harris	Chemistry	21
Q6: Sorting + Filtering

সব USA এবং Canada এর স্টুডেন্টকে age DESCENDING অর্ডারে দেখাও।

Expected Output:

student_id	first_name	last_name	age	country
7	Noah	Lee	22	Canada
3	Bob	Johnson	21	Canada
6	Mia	Taylor	20	USA
1	John	Doe	20	USA
Q7: Alias challenge

সব স্টুডেন্টের first_name এবং last_name দেখাও, কলাম নাম হবে "Full Name"।

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

Hint: SELECT first_name || ' ' || last_name AS "Full Name" FROM students;

Q8: Age NOT IN

সব স্টুডেন্ট দেখাও, যাদের বয়স 20, 21 এবং 22 নয়।

Expected Output:

student_id	first_name	last_name	age
4	Emma	Brown	23
5	Liam	Williams	19
Q9: OR + AND precedence

সব স্টুডেন্ট দেখাও, যারা (country='USA' AND grade='A+') OR (age=21 AND course='Physics')।

Expected Output:

student_id	first_name	last_name	age	grade	country	course
1	John	Doe	20	A+	USA	Computer Science
6	Mia	Taylor	20	A+	USA	Computer Science
3	Bob	Johnson	21	A	Canada	Physics
Q10: Combined tricky filter

সব স্টুডেন্ট দেখাও, যারা (grade='A+' OR grade='A') AND (age BETWEEN 20 AND 21) AND (country!='Australia')।

Expected Output:

student_id	first_name	last_name	age	grade	country
1	John	Doe	20	A+	USA
3	Bob	Johnson	21	A	Canada
6	Mia	Taylor	20	A+	USA