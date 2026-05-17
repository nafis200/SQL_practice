


🔑 Summary Table
Key Type	Description	Example
Primary Key	Uniquely identify each row	student_id
Composite Key	PK made of multiple columns	(order_id, product_name)
Super Key	Any set of columns that uniquely identify	(order_id, product_name, quantity)
Candidate Key	Minimal super key (no extra column)	student_id, email





🔹 Key Concepts for Practice Questions

Primary Key (PK) → uniquely identify each row

Composite Key → PK made of more than one column

Super Key → any set of columns that uniquely identify a row (includes PK)

Candidate Key → minimal super key (no extra column)

Foreign Key (FK) → column referencing another table’s PK

Partial Dependency → non-key attribute depends on part of composite key

Transitive Dependency → non-key attribute depends on another non-key attribute

🔹 Practice Questions
Q1: University Table

Unnormalized:

student_id	student_name	course_name	teacher_name
1	Alice	Math	Karim
1	Alice	Physics	Rahman
2	Bob	Math	Karim
3	Eve	Chemistry	Hasan

Tasks:

Identify Primary Key

Identify Composite Key if needed

Identify Super Key

Convert to 1NF → 2NF → 3NF

Q2: Shop Table

Unnormalized:

order_id	customer_name	product_name	price
101	Alice	Pizza	300
101	Alice	Burger	200
102	Bob	Sandwich	250
103	Alice	Coke	100
103	Alice	Fries	150

Tasks:

Identify Composite Key (if multiple columns required to uniquely identify a row)

Identify Partial Dependency

Normalize to 2NF and 3NF

Q3: Library Table

Unnormalized:

author_name	book_name	member_name	member_email	profile_bio
Karim	DBMS	Alice	alice@mail.com
	Loves reading
Karim	DBMS	Bob	bob@mail.com
	Tech enthusiast
Rahman	AI	Alice	alice@mail.com
	Loves reading
Hasan	Networks	Eve	eve@mail.com
	Gamer + reader

Tasks:

Identify Primary Key

Identify Transitive Dependency

Normalize to 3NF

Identify Candidate Key for Member Table

Q4: Employee Table

Unnormalized:

emp_id	emp_name	dept_name	location	skills
1	Alice	IT	Dhaka	Java, Python
2	Bob	HR	Chittagong	Recruitment
3	Eve	IT	Dhaka	Python, SQL

Tasks:

Identify Primary Key

Check Partial Dependency for skills

Normalize to 2NF → 3NF

Identify Foreign Key relationships if employee-department table split

🔹 Extra Challenge (Important for Keys)

Q5: Company Table (Hierarchical)

emp_id	emp_name	manager_name
1	Alice	NULL
2	Bob	Alice
3	Eve	Alice
4	John	Bob