📌 Table 1: students
student_id	first_name	last_name	age	grade	course	email	dob	blood_group	country
1	John	Doe	20	A+	Computer Science	john.doe@example.com
	2004-05-10	O+	USA
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
📌 Table 2: employee
emp_id	emp_name	department_name	salary
1	Adam	HR	5000
2	Bella	Finance	6000
3	Chris	HR	7000
4	Diana	Engineering	10000
5	Evan	Engineering	9500
6	Fiona	Finance	7200
7	George	Sales	4000
8	Hannah	Sales	4500
🎯 Practice Questions + Expected Output
Q1: প্রতিটি দেশের student সংখ্যা এবং গড় বয়স বের করো।

✅ Expected Output:

country	total_students	avg_age
USA	2	20
UK	1	22
Canada	2	21.5
Australia	2	22
Germany	1	19
Q2: যেসব দেশের গড় বয়স ২০ এর বেশি, শুধু সেই দেশগুলো দেখাও।

✅ Expected Output:

country	avg_age
UK	22
Canada	21.5
Australia	22
Q3: সব student যাদের email নেই → তাদের email এ "email not provided" দেখাবে।

✅ Expected Output (ধরা যাক id=5 Liam এর email null):

first_name	Email
John	john.doe@example.com

Alice	alice.smith@example.com

Bob	bob.johnson@example.com

Emma	emma.brown@example.com

Liam	email not provided
Mia	mia.taylor@example.com

Noah	noah.lee@example.com

Olivia	olivia.harris@example.com
Q4: USA, Canada, UK এর student দাও।

✅ Expected Output:

student_id	first_name	country
1	John	USA
2	Alice	UK
3	Bob	Canada
6	Mia	USA
7	Noah	Canada
Q5: বয়স ১৯ থেকে ২১ এর মধ্যে যাদের বয়স।

✅ Expected Output:

student_id	first_name	age
1	John	20
3	Bob	21
5	Liam	19
6	Mia	20
8	Olivia	21
Q6: নাম যাদের শেষে “a” আছে।

✅ Expected Output:

first_name
Mia
Olivia
Q7: USA এবং Canada এর student দাও বয়স descending অর্ডারে।

✅ Expected Output:

first_name	age	country
Noah	22	Canada
Bob	21	Canada
John	20	USA
Mia	20	USA
Q8: প্রতিটি student এর জন্ম সাল বের করো।

✅ Expected Output:

birth_year	total_students
2001	1
2002	2
2003	2
2004	2
2005	1
Q9: HR ডিপার্টমেন্টের সর্বোচ্চ salary কত?

✅ Expected Output:

max_salary
7000
Q10: যেসব employee HR এর max salary এর চেয়ে বেশি আয় করে।

✅ Expected Output:

emp_name	department_name	salary
Diana	Engineering	10000
Evan	Engineering	9500
Q11: প্রতিটি ডিপার্টমেন্টের total salary।

✅ Expected Output:

department_name	total_salary
HR	12000
Finance	13200
Engineering	19500
Sales	8500
Q12: প্রতিটি ডিপার্টমেন্টের total salary (subquery দিয়ে)।

✅ Expected Output:

department_name	dept_salary
HR	12000
Finance	13200
Engineering	19500
Sales	8500




1️⃣ Table তৈরি
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

2️⃣ Data Insert
INSERT INTO employees (first_name, last_name, department, salary, hire_date, manager_id, email) VALUES
('John', 'Doe', 'HR', 50000, '2019-02-15', NULL, 'john.doe@example.com'),
('Alice', 'Smith', 'IT', 75000, '2020-06-01', 1, 'alice.smith@example.com'),
('Bob', 'Johnson', 'Finance', 60000, '2018-03-12', 1, NULL),
('Eve', 'Williams', 'Finance', 80000, '2021-11-25', 3, 'eve.williams@example.com'),
('Charlie', 'Brown', 'IT', 72000, '2017-07-30', 2, NULL),
('David', 'Miller', 'Marketing', 65000, '2022-01-05', 1, 'david.miller@example.com'),
('Sophia', 'Taylor', 'Marketing', 62000, '2019-09-18', 6, NULL),
('Liam', 'Anderson', 'HR', 55000, '2021-04-10', 1, 'liam.anderson@example.com');

3️⃣ Practice Questions (Unique & Advanced)
Q1. প্রতিটি department অনুযায়ী মোট কর্মচারী সংখ্যা এবং average salary দেখাও।

Test Case Expected Output:

department	count	avg_salary
HR	2	52500.00
IT	2	73500.00
Finance	2	70000.00
Marketing	2	63500.00
Q2. শুধু সেই department দেখাও যাদের average salary > 65000

Expected Output:

department	avg_salary
IT	73500.00
Finance	70000.00
Q3. প্রতিটি কর্মচারীর বয়স (hire_date থেকে আজকের তারিখ পর্যন্ত কত বছর হলো) বের করো।

Expected Output (ধরি today = 2025-09-06):

emp_id	first_name	hire_years
1	John	6
2	Alice	5
3	Bob	7
4	Eve	3
5	Charlie	8
6	David	3
7	Sophia	6
8	Liam	4
Q4. এমন সব কর্মচারী দেখাও যাদের email নেই (NULL)

Expected Output:

emp_id	first_name	last_name
3	Bob	Johnson
5	Charlie	Brown
7	Sophia	Taylor
Q5. NULL email এর জায়গায় 'not provided' বসিয়ে পুরো লিস্ট দেখাও।

Expected Output:

emp_id	first_name	email
1	John	john.doe@example.com

2	Alice	alice.smith@example.com

3	Bob	not provided
4	Eve	eve.williams@example.com

5	Charlie	not provided
6	David	david.miller@example.com

7	Sophia	not provided
8	Liam	liam.anderson@example.com
Q6. IT বা HR এ কাজ করে না এমন কর্মচারীদের লিস্ট বের করো।

Expected Output:

emp_id	first_name	department
3	Bob	Finance
4	Eve	Finance
6	David	Marketing
7	Sophia	Marketing
Q7. Salary সবচেয়ে বেশি যেই employee পেয়েছে তাকে বাদ দিয়ে বাকিদের লিস্ট দেখাও।

Expected Output:

emp_id	first_name	salary
1	John	50000
2	Alice	75000
3	Bob	60000
5	Charlie	72000
6	David	65000
7	Sophia	62000
8	Liam	55000
Q8. প্রতিটি department এ salary highest কে, lowest কে — তা বের করো।

Expected Output:

department	highest	lowest
HR	55000	50000
IT	75000	72000
Finance	80000	60000
Marketing	65000	62000
Q9. window function ব্যবহার করে প্রতিটি department এর মধ্যে salary rank বের করো।

Expected Output:

first_name	department	salary	dept_rank
John	HR	50000	2
Liam	HR	55000	1
Alice	IT	75000	1
Charlie	IT	72000	2
Eve	Finance	80000	1
Bob	Finance	60000	2
David	Marketing	65000	1
Sophia	Marketing	62000	2
Q10. nested subquery: এমন employee দেখাও যাদের salary Finance department এর average salary এর বেশি।

Expected Output:

emp_id	first_name	department	salary
2	Alice	IT	75000
4	Eve	Finance	80000
5	Charlie	IT	72000



🚀 ২০টি Advanced Question + Test Case (Only Expected Output, Query না)
Q1. প্রতিটি department এর মধ্যে highest salary পাওয়া employee কে খুঁজে বের করো।

Expected Output:

department	first_name	salary
HR	Liam	55000
IT	Alice	75000
Finance	Eve	80000
Marketing	David	65000
Q2. প্রতিটি employee এর salary rank globally (সবাইকে নিয়ে) বের করো।

Expected Output:

first_name	salary	global_rank
Eve	80000	1
Alice	75000	2
Charlie	72000	3
David	65000	4
Sophia	62000	5
Bob	60000	6
Liam	55000	7
John	50000	8
Q3. প্রতিটি employee এর previous employee (salary অনুযায়ী) এর সাথে পার্থক্য (salary gap) দেখাও।

Expected Output:

first_name	salary	prev_salary	gap
Eve	80000	NULL	NULL
Alice	75000	80000	-5000
Charlie	72000	75000	-3000
David	65000	72000	-7000
Sophia	62000	65000	-3000
Bob	60000	62000	-2000
Liam	55000	60000	-5000
John	50000	55000	-5000
Q4. প্রতিটি employee এর next employee (salary অনুযায়ী) এর সাথে পার্থক্য দেখাও।

Expected Output:

first_name	salary	next_salary	gap
Eve	80000	75000	5000
Alice	75000	72000	3000
Charlie	72000	65000	7000
David	65000	62000	3000
Sophia	62000	60000	2000
Bob	60000	55000	5000
Liam	55000	50000	5000
John	50000	NULL	NULL
Q5. department অনুযায়ী average salary এর থেকে যাদের salary বেশি, তাদের লিস্ট দেখাও।

Expected Output:

first_name	department	salary
Liam	HR	55000
Alice	IT	75000
Eve	Finance	80000
David	Marketing	65000
Q6. প্রতিটি department এর মধ্যে salary rank বের করো।

Expected Output:

first_name	department	salary	dept_rank
Liam	HR	55000	1
John	HR	50000	2
Alice	IT	75000	1
Charlie	IT	72000	2
Eve	Finance	80000	1
Bob	Finance	60000	2
David	Marketing	65000	1
Sophia	Marketing	62000	2
Q7. CTE ব্যবহার করে প্রতিটি department এর মোট salary বের করো।

Expected Output:

department	total_salary
HR	105000
IT	147000
Finance	140000
Marketing	127000
Q8. Nested Subquery: এমন employee বের করো যাদের salary Finance এর average salary এর বেশি।

Expected Output:

first_name	department	salary
Alice	IT	75000
Eve	Finance	80000
Charlie	IT	72000
Q9. Self Join: manager এবং তার reporting employee দেখাও।

Expected Output:

manager_name	employee_name
John	Alice
John	Bob
John	David
John	Liam
Alice	Charlie
Bob	Eve
David	Sophia
Q10. hire_date থেকে কত বছর কাজ করছে, সেই অনুযায়ী rank বের করো।

Expected Output:

first_name	hire_date	years_worked	rank
Charlie	2017-07-30	8	1
Bob	2018-03-12	7	2
John	2019-02-15	6	3
Sophia	2019-09-18	6	3
Alice	2020-06-01	5	5
Liam	2021-04-10	4	6
Eve	2021-11-25	3	7
David	2022-01-05	3	7
Q11. প্রতিটি department এ সর্বশেষ join করা employee কে দেখাও।

Expected Output:

department	latest_employee
HR	Liam
IT	Alice
Finance	Eve
Marketing	David
Q12. প্রতিটি employee এর email যদি NULL হয় তবে "No Email" দেখাও।

Expected Output:

first_name	email
John	john.doe@example.com

Alice	alice.smith@example.com

Bob	No Email
Eve	eve.williams@example.com

Charlie	No Email
David	david.miller@example.com

Sophia	No Email
Liam	liam.anderson@example.com
Q13. প্রতিটি department এ দ্বিতীয় highest salary পাওয়া employee কে খুঁজে বের করো।

Expected Output:

department	employee	salary
HR	John	50000
IT	Charlie	72000
Finance	Bob	60000
Marketing	Sophia	62000
Q14. window function ব্যবহার করে প্রতিটি employee এর percentage contribution (department salary এর সাথে তুলনা করে) বের করো।

Expected Output:

first_name	department	salary	percent_contribution
John	HR	50000	47.6%
Liam	HR	55000	52.4%
Alice	IT	75000	51%
Charlie	IT	72000	49%
Eve	Finance	80000	57.1%
Bob	Finance	60000	42.9%
David	Marketing	65000	51.2%
Sophia	Marketing	62000	48.8%
Q15. এমন employee বের করো যাদের salary নিজের department এর average salary থেকে বেশি।

Expected Output:

first_name	department	salary
Liam	HR	55000
Alice	IT	75000
Eve	Finance	80000
David	Marketing	65000
Q16. প্রতিটি department এর মধ্যে earliest hire_date employee কে খুঁজে বের করো।

Expected Output:

department	employee	hire_date
HR	John	2019-02-15
IT	Charlie	2017-07-30
Finance	Bob	2018-03-12
Marketing	Sophia	2019-09-18
Q17. ROLLUP ব্যবহার করে প্রতিটি department এর মোট salary এবং grand total দেখাও।

Expected Output:

department	total_salary
HR	105000
IT	147000
Finance	140000
Marketing	127000
NULL	519000
Q18. এমন employee বের করো যাদের hire_date 2019 সালের আগে।

Expected Output:

emp_id	first_name	hire_date
Bob	2018-03-12	
Charlie	2017-07-30	
Q19. Nested Subquery: এমন employee বের করো যাদের salary Alice এর salary এর থেকে বেশি।

Expected Output:

emp_id	first_name	salary
Eve	80000	
Q20. প্রতিটি employee এর সাথে দেখাও — তার department এর maximum salary এর gap কত।

Expected Output:

first_name	department	salary	dept_max	gap
John	HR	50000	55000	5000
Liam	HR	55000	55000	0
Alice	IT	75000	75000	0
Charlie	IT	72000	75000	3000
Bob	Finance	60000	80000	20000
Eve	Finance	80000	80000	0
David	Marketing	65000	65000	0
Sophia	Marketing	62000	65000	3000


<!--  -->




Table: employees (sample data)
emp_id	first_name	last_name	department	salary	hire_date	manager_id	email
1	John	Doe	HR	50000	2019-02-15	NULL	john.doe@example.com

2	Alice	Smith	IT	75000	2020-06-01	1	alice.smith@example.com

3	Bob	Johnson	Finance	60000	2018-03-12	1	NULL
4	Eve	Williams	Finance	80000	2021-11-25	3	eve.williams@example.com

5	Charlie	Brown	IT	72000	2017-07-30	2	NULL
6	David	Miller	Marketing	65000	2022-01-05	1	david.miller@example.com

7	Sophia	Taylor	Marketing	62000	2019-09-18	6	NULL
8	Liam	Anderson	HR	55000	2021-04-10	1	liam.anderson@example.com
✅ Window Function Questions + Expected Output
Q1: প্রতিটি department অনুযায়ী salary rank (RANK)
first_name	department	salary	dept_rank
John	HR	50000	2
Liam	HR	55000	1
Alice	IT	75000	1
Charlie	IT	72000	2
Bob	Finance	60000	2
Eve	Finance	80000	1
David	Marketing	65000	1
Sophia	Marketing	62000	2
Q2: Global salary rank (ROW_NUMBER)
first_name	salary	global_rank
Eve	80000	1
Alice	75000	2
Charlie	72000	3
David	65000	4
Sophia	62000	5
Bob	60000	6
Liam	55000	7
John	50000	8
Q3: Previous salary (LAG) globally
first_name	salary	prev_salary
Eve	80000	NULL
Alice	75000	80000
Charlie	72000	75000
David	65000	72000
Sophia	62000	65000
Bob	60000	62000
Liam	55000	60000
John	50000	55000
Q4: Next salary (LEAD) globally
first_name	salary	next_salary
Eve	80000	75000
Alice	75000	72000
Charlie	72000	65000
David	65000	62000
Sophia	62000	60000
Bob	60000	55000
Liam	55000	50000
John	50000	NULL
Q5: Department-wise cumulative salary (hire_date order)
first_name	department	salary	cum_salary
John	HR	50000	50000
Liam	HR	55000	105000
Alice	IT	75000	75000
Charlie	IT	72000	147000
Bob	Finance	60000	60000
Eve	Finance	80000	140000
Sophia	Marketing	62000	62000
David	Marketing	65000	127000
Q6: Department-wise running average salary
first_name	department	salary	running_avg
John	HR	50000	50000
Liam	HR	55000	52500
Alice	IT	75000	75000
Charlie	IT	72000	73500
Bob	Finance	60000	60000
Eve	Finance	80000	70000
Sophia	Marketing	62000	62000
David	Marketing	65000	63500
Q7: First and Last employee per department (FIRST_VALUE & LAST_VALUE)
department	first_employee	last_employee
HR	John	Liam
IT	Alice	Charlie
Finance	Bob	Eve
Marketing	Sophia	David
Q8: Salary difference with previous employee in same department (LAG)
first_name	department	salary	prev_salary	gap
John	HR	50000	NULL	NULL
Liam	HR	55000	50000	5000
Alice	IT	75000	NULL	NULL
Charlie	IT	72000	75000	-3000
Bob	Finance	60000	NULL	NULL
Eve	Finance	80000	60000	20000
Sophia	Marketing	62000	NULL	NULL
David	Marketing	65000	62000	3000
Q9: Department-wise percentile (CUME_DIST)
first_name	department	salary	percentile
Liam	HR	55000	1.0
John	HR	50000	0.5
Alice	IT	75000	1.0
Charlie	IT	72000	0.5
Eve	Finance	80000	1.0
Bob	Finance	60000	0.5
David	Marketing	65000	1.0
Sophia	Marketing	62000	0.5
Q10: Quartile distribution per department (NTILE(4))
first_name	department	salary	quartile
John	HR	50000	1
Liam	HR	55000	4
Alice	IT	75000	4
Charlie	IT	72000	3
Bob	Finance	60000	3
Eve	Finance	80000	4
Sophia	Marketing	62000	3
David	Marketing	65000	4 




Q11–Q20: Advanced Window Function Practice + Expected Output
Q11: Global cumulative salary (salary অনুযায়ী order)
first_name	salary	cum_salary_global
John	50000	50000
Liam	55000	105000
Bob	60000	165000
Sophia	62000	227000
David	65000	292000
Charlie	72000	364000
Alice	75000	439000
Eve	80000	519000
Q12: Salary rank + LAG salary difference globally
first_name	salary	rank	prev_salary	salary_gap
Eve	80000	1	NULL	NULL
Alice	75000	2	80000	-5000
Charlie	72000	3	75000	-3000
David	65000	4	72000	-7000
Sophia	62000	5	65000	-3000
Bob	60000	6	62000	-2000
Liam	55000	7	60000	-5000
John	50000	8	55000	-5000
Q13: Each department: top 1 salary employee (RANK)
department	first_name	salary	dept_rank
HR	Liam	55000	1
IT	Alice	75000	1
Finance	Eve	80000	1
Marketing	David	65000	1
Q14: Each department: salary difference with previous hire_date employee (LAG)
first_name	department	hire_date	salary	prev_salary	gap
John	HR	2019-02-15	50000	NULL	NULL
Liam	HR	2021-04-10	55000	50000	5000
Charlie	IT	2017-07-30	72000	NULL	NULL
Alice	IT	2020-06-01	75000	72000	3000
Bob	Finance	2018-03-12	60000	NULL	NULL
Eve	Finance	2021-11-25	80000	60000	20000
Sophia	Marketing	2019-09-18	62000	NULL	NULL
David	Marketing	2022-01-05	65000	62000	3000
Q15: Each department: running total salary (hire_date order)
department	first_name	salary	running_total
HR	John	50000	50000
HR	Liam	55000	105000
IT	Charlie	72000	72000
IT	Alice	75000	147000
Finance	Bob	60000	60000
Finance	Eve	80000	140000
Marketing	Sophia	62000	62000
Marketing	David	65000	127000
Q16: Each department: average salary (hire_date order)
department	first_name	salary	running_avg
HR	John	50000	50000
HR	Liam	55000	52500
IT	Charlie	72000	72000
IT	Alice	75000	73500
Finance	Bob	60000	60000
Finance	Eve	80000	70000
Marketing	Sophia	62000	62000
Marketing	David	65000	63500
Q17: Each employee: percentage of department max salary
first_name	department	salary	max_salary	pct_of_max
John	HR	50000	55000	90.91%
Liam	HR	55000	55000	100%
Charlie	IT	72000	75000	96%
Alice	IT	75000	75000	100%
Bob	Finance	60000	80000	75%
Eve	Finance	80000	80000	100%
Sophia	Marketing	62000	65000	95.38%
David	Marketing	65000	65000	100%
Q18: Department-wise LAG & LEAD salary together
department	first_name	salary	prev_salary	next_salary
HR	John	50000	NULL	55000
HR	Liam	55000	50000	NULL
IT	Charlie	72000	NULL	75000
IT	Alice	75000	72000	NULL
Finance	Bob	60000	NULL	80000
Finance	Eve	80000	60000	NULL
Marketing	Sophia	62000	NULL	65000
Marketing	David	65000	62000	NULL
Q19: CUME_DIST per department (salary order)
department	first_name	salary	cume_dist
HR	John	50000	0.5
HR	Liam	55000	1.0
IT	Charlie	72000	0.5
IT	Alice	75000	1.0
Finance	Bob	60000	0.5
Finance	Eve	80000	1.0
Marketing	Sophia	62000	0.5
Marketing	David	65000	1.0
Q20: NTILE(4) quartile per department (salary order)
department	first_name	salary	quartile
HR	John	50000	1
HR	Liam	55000	4
IT	Charlie	72000	3
IT	Alice	75000	4
Finance	Bob	60000	3
Finance	Eve	80000	4
Marketing	Sophia	62000	3
Marketing	David	65000	4

🎯 এখন তুমি পুরো Window Function coverage পেয়ে গেছো:


