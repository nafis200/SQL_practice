🔹 Topic 1: Constraints & Keys
1️⃣ PRIMARY KEY vs UNIQUE

Question:
একটা students টেবিল বানাও যেখানে–

student_id → PRIMARY KEY

email → UNIQUE (null allowed)

first_name এবং last_name থাকবে

Test Case Data Table:

student_id	first_name	last_name	email
1	Nafis	Ahamed	nafis@gmail.com

2	Rakesh	Biswas	rakesh@gmail.com

3	Alice	Smith	nafis@gmail.com

1	Bob	Johnson	bob@gmail.com

4	Eve	Lee	NULL

Explanation:

PRIMARY KEY → student_id duplicate বা null হতে পারবে না।

UNIQUE → email duplicate হবে না, কিন্তু null allowed।

Error আসবে যদি duplicate primary key বা duplicate UNIQUE value insert করা হয়।

2️⃣ FOREIGN KEY + ON DELETE (CASCADE / SET NULL)

Question:
একটা courses টেবিল বানাও যেখানে–

course_id → PRIMARY KEY

course_name

student_id → FOREIGN KEY references students(student_id)

Delete behaviour দেখাও (CASCADE বা SET NULL)

Test Case Data Table:

course_id	course_name	student_id
101	Math	1
102	Science	2
103	English	5
104	History	4

Explanation:

FOREIGN KEY → students table এর student_id আছে কিনা validate করে।

CASCADE → যদি student_id delete হয়, related course row delete হবে।

SET NULL → যদি student_id delete হয়, course row থাকবে কিন্তু student_id null হবে।

Error হবে যদি student_id reference table-এ না থাকে।

3️⃣ NOT NULL + DEFAULT + CHECK

Question:
একটা employees টেবিল বানাও যেখানে–

emp_id → PRIMARY KEY

name → NOT NULL

salary → CHECK (salary >= 5000)

department → DEFAULT 'General'

Test Case Data Table:

emp_id	name	salary	department
1	Alice	10000	NULL
2	Bob	7000	HR
3	NULL	9000	IT
4	Eve	4000	General
5	Charlie	6000	NULL

Explanation:

NOT NULL → name must have value

DEFAULT → department auto fill হবে যদি NULL বা value না দেওয়া হয়

CHECK → salary নির্দিষ্ট range এর নিচে হলে error দিবে