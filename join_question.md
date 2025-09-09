Table Setup (একবার create করলেই হবে)

আমাদের টেবিলগুলো এইরকম ধরে নিও:

students
student_id	name	city
1	Nafis	Dhaka
2	Rakesh	Chittagong
3	Alice	Khulna
4	Bob	Sylhet
5	Eve	NULL
courses
course_id	course_name	student_id
1	Database	1
2	Networking	2
3	Web Development	1
4	AI Basics	3
5	Machine Learning	NULL
🔥 Practice Questions + Test Cases
Q1: INNER JOIN

👉 যেসব student কোর্সে ভর্তি হয়েছে তাদের নাম আর কোর্স দেখাও।

✅ Expected Output:

name	course_name
Nafis	Database
Rakesh	Networking
Nafis	Web Development
Alice	AI Basics
Q2: LEFT JOIN

👉 সব student এর নাম দেখাও, সাথে যদি কোর্সে ভর্তি থাকে তাহলে course_name দেখাও।

✅ Expected Output:

name	course_name
Nafis	Database
Nafis	Web Development
Rakesh	Networking
Alice	AI Basics
Bob	NULL
Eve	NULL
Q3: RIGHT JOIN

👉 সব কোর্স দেখাও, সাথে student এর নাম থাকলে দেখাও।

✅ Expected Output:

name	course_name
Nafis	Database
Rakesh	Networking
Nafis	Web Development
Alice	AI Basics
NULL	Machine Learning
Q4: FULL JOIN

👉 সব student আর সব course একসাথে দেখাও (যার মিল নেই তার জায়গায় NULL হবে)।

✅ Expected Output:

name	course_name
Nafis	Database
Rakesh	Networking
Nafis	Web Development
Alice	AI Basics
Bob	NULL
Eve	NULL
NULL	Machine Learning
Q5: CROSS JOIN

👉 প্রতিটি student এর সাথে প্রতিটি course কে দেখাও।

✅ Expected Output (partial, অনেক বড় হবে):

name	course_name
Nafis	Database
Nafis	Networking
Nafis	Web Development
Nafis	AI Basics
Nafis	Machine Learning
Rakesh	Database
Rakesh	Networking
...	...
Q6: NATURAL JOIN

👉 student_id কলামের উপর ভিত্তি করে student আর course এর data combine করো।

✅ Expected Output:

student_id	name	city	course_id	course_name
1	Nafis	Dhaka	1	Database
2	Rakesh	Chittagong	2	Networking
1	Nafis	Dhaka	3	Web Development
3	Alice	Khulna	4	AI Basics

ভাই, এখন তুমি চাইলে আমি প্রতিটা প্রশ্নের step-by-step SQL query solution ও লিখে দিতে পারি।
চাও কি আমি পরের রেসপন্সে সবগুলোর query দিয়ে দিই?


Q1:

👉 এমন সব student এর নাম বের করো যাদের কোর্স আছে (INNER JOIN ব্যবহার করো)।

✅ Expected Output:

name	course_name
Nafis	Database
Nafis	Web Development
Rakesh	Networking
Alice	AI Basics
Q2:

👉 এমন সব student দেখাও, সাথে তাদের course name থাকলে দেখাও, না থাকলে NULL (LEFT JOIN ব্যবহার করো)।

✅ Expected Output:

name	course_name
Nafis	Database
Nafis	Web Development
Rakesh	Networking
Alice	AI Basics
Bob	NULL
Eve	NULL
Q3:

👉 এমন সব course দেখাও, সাথে student এর নাম থাকলে দেখাও, না থাকলে NULL (RIGHT JOIN ব্যবহার করো)।

✅ Expected Output:

name	course_name
Nafis	Database
Rakesh	Networking
Nafis	Web Development
Alice	AI Basics
NULL	Machine Learning
Q4:

👉 সব student + সব course দেখাও (FULL JOIN)।

✅ Expected Output:

name	course_name
Nafis	Database
Rakesh	Networking
Nafis	Web Development
Alice	AI Basics
Bob	NULL
Eve	NULL
NULL	Machine Learning
Q5:

👉 প্রতিটি student এর সাথে প্রতিটি course pair করো (CROSS JOIN)।

✅ Expected Output (partial, অনেক বড় হবে):

name	course_name
Nafis	Database
Nafis	Networking
Nafis	Web Development
Nafis	AI Basics
Nafis	Machine Learning
Rakesh	Database
Rakesh	Networking
...	...
Q6:

👉 এমন student এর নাম বের করো যারা কোনো কোর্সে ভর্তি হয়নি।

✅ Expected Output:

name
Bob
Eve
Q7:

👉 এমন course বের করো যেটা কোনো student নেয়নি।

✅ Expected Output:

course_name
Machine Learning
Q8:

👉 প্রতিটি student কয়টা course নিয়েছে সেটা দেখাও।

✅ Expected Output:

name	total_courses
Nafis	2
Rakesh	1
Alice	1
Bob	0
Eve	0
Q9:

👉 প্রতিটি course এর সাথে কতজন student যুক্ত সেটা দেখাও।

✅ Expected Output:

course_name	total_students
Database	1
Networking	1
Web Development	1
AI Basics	1
Machine Learning	0
Q10:

👉 এমন student দেখাও যাদের city = Dhaka এবং তারা কোন কোন course নিয়েছে।

✅ Expected Output:

name	course_name
Nafis	Database
Nafis	Web Development