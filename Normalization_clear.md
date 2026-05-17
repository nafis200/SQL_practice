—

🔹 1NF (First Normal Form)

👉 Property Maintain:

Atomic values only – কোনো attribute-এর মধ্যে multivalued data বা repeating group থাকবে না।
(e.g. skills = "Java, Python" → ভেঙে আলাদা টেবিল বা row করতে হবে)

Unique rows – একই row repeat করা যাবে না।

Primary key নির্ধারণ – প্রতিটা row uniquely identify করতে হবে।

📝 Example:
emp_id, emp_name, skills = Java, Python ❌

1. Unique Rows

একই ডেটা দুইবার রাখা যাবে না।
মানে টেবিলের প্রতিটা row আলাদা হবে।

❌ Bad Example:

student_id	student_name	course
1	Alice	Math
1	Alice	Math




2NF (Second Normal Form) বোঝার জন্য Step-by-Step
1️⃣ 2NF মূল কথা:

2NF এর জন্য table অবশ্যই 1NF এ থাকতে হবে।

Partial dependency remove করতে হবে → যদি primary key composite (একাধিক column) হয়, non-key attribute শুধুমাত্র primary key-এর এক অংশের উপর নির্ভর করতে পারবে না।

Non-key attribute সবসময় পুরো primary key-এর উপর depend করতে হবে।

2️⃣ Example: Shop Table

Unnormalized Table / 1NF Table

order_id	product_name	customer_name	price
101	Pizza	Alice	300
101	Burger	Alice	200
102	Sandwich	Bob	250
103	Coke	Alice	100
103	Fries	Alice	150
3️⃣ Composite Key Identify করা

যদি আমরা order_id + product_name কে primary key ধরি:

কারণ একই order_id এর multiple product থাকতে পারে → row আলাদা করতে এই combination দরকার।

Composite Key = (order_id, product_name)

4️⃣ Partial Dependency কি?

Partial dependency মানে:

Non-key attribute primary key-এর একটি অংশের উপর নির্ভর করছে।

Non-key attribute পুরো composite key-এর উপর নির্ভর করছে না।

এখানে:

customer_name শুধু order_id এর উপর নির্ভর করছে, product_name এর উপর না।

price কি product-specific? → হ্যাঁ, price হয়তো product-এর উপর নির্ভর করছে, তাই ঠিক আছে।

Conclusion:
customer_name → partial dependency, কারণ composite key-এর pur whole key এর উপর নির্ভর করছে না।

5️⃣ Solution (2NF)

Partial dependency remove করতে হবে → Customer আলাদা টেবিলে নেওয়া হবে

Customers Table

customer_id	customer_name
1	Alice
2	Bob

Orders Table

order_id	customer_id
101	1
102	2
103	1

OrderDetails Table (product-specific)

order_id	product_name	price
101	Pizza	300
101	Burger	200
102	Sandwich	250
103	Coke	100
103	Fries	150


🔹 3NF বোঝার জন্য Visual / Logic Example

আমরা দেখছি Library Table:

author_name	book_name	member_name	member_email	profile_bio
Karim	DBMS Guide	Alice	alice@mail.com
	Loves reading
Karim	DBMS Guide	Bob	bob@mail.com
	Tech enthusiast
Rahman	AI Basics	Alice	alice@mail.com
	Loves reading
Hasan	Networks Book	Eve	eve@mail.com
	Gamer + reader
1️⃣ Primary Key Decide

আমরা ধরলাম book_name + member_email = primary key

কারণ:

এক member অনেক বই borrow করতে পারে

এক বই অনেক member borrow করতে পারে

এখন non-key attributes: author_name, member_name, profile_bio

2️⃣ Non-key attribute নির্ভরতা দেখা

member_name → member_email → profile_bio

profile_bio কি directly primary key (book_name + member_email) এর উপর depend করছে?
❌ না।

profile_bio depend করছে member_email এর উপর → এটা non-key → non-key dependency।

তাই এটা transitive dependency।