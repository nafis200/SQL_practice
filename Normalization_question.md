📌 Question Bank (Normalization + Relationship)
🔹 Normalization Questions
Q1: (1NF)

নীচের টেবিলটা দেখো:

Orders Table (Unnormalized)

order_id	customer_name	phone	products	total
1	Alice	1234	Pizza, Burger	500
2	Bob	5678	Sandwich, Coke	450

👉 এটাকে 1NF এ রূপান্তর করো।

Test Case Expected Output (1NF):

order_id	customer_name	phone	product	price
1	Alice	1234	Pizza	300
1	Alice	1234	Burger	200
2	Bob	5678	Sandwich	250
2	Bob	5678	Coke	200
Q2: (2NF)

তুমি নিচের টেবিলটা পেয়েছো (1NF আকারে):

Orders Table

order_id	customer_name	phone	product	price
1	Alice	1234	Pizza	300
2	Bob	5678	Burger	200

👉 এটাকে 2NF এ নরমালাইজ করো।
(Hint: customer info আলাদা হবে)

Test Case Expected Output:

Customers Table
| customer_id | name | phone |
|-------------|-------|-------|
| 1 | Alice | 1234 |
| 2 | Bob | 5678 |

Orders Table
| order_id | customer_id |
|----------|-------------|
| 1 | 1 |
| 2 | 2 |

OrderDetails Table
| order_id | product | price |
|----------|---------|-------|
| 1 | Pizza | 300 |
| 2 | Burger | 200 |

Q3: (3NF)

product → price dependency থাকায় Products আলাদা করো।

Test Case Expected Output:

Products Table
| product_id | product | price |
|------------|---------|-------|
| 1 | Pizza | 300 |
| 2 | Burger | 200 |

OrderDetails Table
| order_id | product_id |
|----------|------------|
| 1 | 1 |
| 2 | 2 |

🔹 Relationship Questions
Q4: (One-to-One)

একটি সিস্টেমে User আর তার Profile থাকে।
একজন user এর শুধু একটি profile থাকতে পারে।

👉 Schema design করো।

Test Case Expected Output:

Users Table
| user_id | name |
|---------|-------|
| 1 | Alice |
| 2 | Bob |

Profiles Table
| profile_id | user_id | bio |
|------------|---------|------------|
| 1 | 1 | Loves pizza|
| 2 | 2 | Gamer boy |

Q5: (One-to-Many)

একজন customer অনেকগুলো order করতে পারে।

👉 Schema design করো।

Test Case Expected Output:

Customers Table
| customer_id | name |
|-------------|-------|
| 1 | Alice |
| 2 | Bob |

Orders Table
| order_id | customer_id |
|----------|-------------|
| 1 | 1 |
| 2 | 1 |
| 3 | 2 |

Q6: (Many-to-Many + Junction Table)

একজন student অনেক course নিতে পারে, আবার এক course এ অনেক student থাকতে পারে।

👉 Schema design করো।

Test Case Expected Output:

Students Table
| student_id | name |
|------------|-------|
| 1 | Alice |
| 2 | Bob |

Courses Table
| course_id | course_name |
|-----------|-------------|
| 101 | Math |
| 102 | Physics |

StudentCourses Table (junction)
| student_id | course_id |
|------------|-----------|
| 1 | 101 |
| 1 | 102 |
| 2 | 101 |


📌 Extra Practice Questions (Normalization + Relationship)
🔹 Normalization Questions
Q7: (1NF → 2NF Practice)

Employees Table (Unnormalized)

emp_id	emp_name	dept_name	dept_location	skills
1	Alice	IT	Dhaka	Java, Python
2	Bob	HR	Chittagong	Recruitment
3	Eve	IT	Dhaka	Python, SQL

👉 Step by step 1NF → 2NF → 3NF এ রূপান্তর করো।

Hint:

skills atomic করো (1NF)।

Employee আর Department আলাদা করো (2NF)।

Skill আলাদা টেবিলে নাও (3NF)।

Q8: (3NF – Transitive Dependency)

Students Table (Unnormalized)

student_id	student_name	course_id	course_name	teacher_name
1	Alice	101	Math	Mr. Karim
2	Bob	102	Physics	Dr. Rahman
3	Alice	102	Physics	Dr. Rahman

👉 এটাকে 3NF এ Normalized করো।

Hint:

Student → Course অনেক।

Course → Teacher dependency আছে।

Q9: (Boyce-Codd Normal Form - BCNF)

Projects Table

project_id	employee_id	project_manager
1	101	Karim
1	102	Karim
2	103	Rahman

👉 এখানে dependency আছে project_manager → project_id।

এটাকে BCNF এ রূপান্তর করো।

🔹 Relationship Questions
Q10: (One-to-One)

Hospital System
প্রতিটি Patient এর একটি করে MedicalRecord আছে।

👉 Schema design করো।

Expected Tables:

Patients

MedicalRecords (FK patient_id)

Q11: (One-to-Many)

School System
একজন Teacher অনেকগুলো Student পড়াতে পারে, কিন্তু একজন Student একটিমাত্র Teacher এর অধীনে থাকবে।

👉 Schema design + টেস্ট কেস করো।

Q12: (Many-to-Many with Attributes)

E-commerce System
একজন Customer অনেকগুলো Product কিনতে পারে, আবার এক Product অনেক Customer কিনতে পারে।
এখানে Order date আর Quantity দরকার।

👉 Schema design করো।

Hint:

Customers

Products

Orders (junction + extra attributes যেমন quantity, date)

Q13: (Recursive Relationship) – একটু Intermediate

Employees Table

emp_id	emp_name	manager_id
1	Alice	NULL
2	Bob	1
3	Eve	1
4	John	2

👉 এখানে manager_id একই টেবিলের emp_id কে refer করছে।
Schema বুঝিয়ে দাও।

Q14: (Combination of All)

Library System

এক Author অনেক Book লিখতে পারে। (One-to-Many)

এক Book অনেক Member পড়তে পারে। (Many-to-Many)

এক Member এর একটি Profile থাকে। (One-to-One)

👉 Schema design + টেস্ট কেস করো।




Practice Questions with Statement + Raw Data
Q1: University Table

Statement:
একটি University সিস্টেমে student, course আর teacher-এর তথ্য একসাথে রাখা হয়েছে।
একজন student অনেক course নিতে পারে, আবার এক course-এ অনেক student থাকতে পারে।

Unnormalized Table:

student_id	student_name	course_name	teacher_name
1	Alice	Math	Karim
1	Alice	Physics	Rahman
2	Bob	Math	Karim
3	Eve	Chemistry	Hasan
Q2: Shop Table

Statement:
একটি Shop টেবিলে একই সাথে customer-এর তথ্য, তার order এবং product-এর তথ্য রাখা আছে।
একজন customer অনেকগুলো order করতে পারে, আর এক order-এ অনেকগুলো product থাকতে পারে।

Unnormalized Table:

order_id	customer_name	phone	product_name	price
101	Alice	1234	Pizza	300
101	Alice	1234	Burger	200
102	Bob	5678	Sandwich	250
103	Alice	1234	Coke	100
103	Alice	1234	Fries	150
Q3: Hospital System

Statement:
একটি Hospital সিস্টেমে patient-এর তথ্য এবং তার medical record একসাথে রাখা আছে।
প্রতিটি patient-এর শুধু একটি medical record থাকে।

Unnormalized Table:

patient_id	patient_name	age	record_id	diagnosis	treatment
1	Alice	30	R001	Fever	Paracetamol
2	Bob	40	R002	Diabetes	Insulin
3	Eve	25	R003	Fracture	Surgery
Q4: Employee Table

Statement:
একটি Employee টেবিলে একই সাথে employee তথ্য, তার department এবং তার multiple skillset রাখা আছে।
একজন employee একাধিক skill জানে, আর এক department-এ একাধিক employee থাকতে পারে।

Unnormalized Table:

emp_id	emp_name	dept_name	location	skills
1	Alice	IT	Dhaka	Java, Python
2	Bob	HR	Chittagong	Recruitment
3	Eve	IT	Dhaka	Python, SQL
Q5: Library Table

Statement:
একটি Library টেবিলে একসাথে author, তার বই, library member এবং member profile-এর তথ্য রাখা আছে।
একজন author অনেক বই লিখতে পারে, এক বই অনেক member পড়তে পারে, এবং প্রতিটি member-এর একটি profile থাকে।

Unnormalized Table:

author_name	book_name	member_name	member_email	profile_bio
Karim	DBMS Guide	Alice	alice@mail.com
	Loves reading
Karim	DBMS Guide	Bob	bob@mail.com
	Tech enthusiast
Rahman	AI Basics	Alice	alice@mail.com
	Loves reading
Hasan	Networks Book	Eve	eve@mail.com
	Gamer + reader
Q6: Company Table

Statement:
একটি Company টেবিলে employee এবং তার manager-এর নাম রাখা আছে।
একজন employee আরেকজন employee-এর অধীনে কাজ করে (recursive relationship)।

Unnormalized Table:

emp_id	emp_name	manager_name
1	Alice	NULL
2	Bob	Alice
3	Eve	Alice
4	John	Bob
Q7: E-commerce Table

Statement:
একটি E-commerce টেবিলে customer, product, order এবং quantity একসাথে রাখা আছে।
একজন customer অনেক product কিনতে পারে, আবার এক product অনেক customer কিনতে পারে।

Unnormalized Table:

order_id	customer_name	product_name	quantity	order_date
1001	Alice	Pizza	2	2025-09-01
1001	Alice	Coke	1	2025-09-01
1002	Bob	Burger	3	2025-09-02
1003	Alice	Fries	2	2025-09-03
1004	Eve	Sandwich	1	2025-09-04