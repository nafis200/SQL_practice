1️⃣ Basic SELECT & Filtering

টেবিল: students
প্রশ্ন:

সব স্টুডেন্টের নাম (first_name, last_name) এবং ইমেইল দেখাও।

সব ২০ বছরের স্টুডেন্টকে দেখাও।

সব USA এবং Australia দেশের স্টুডেন্টদের দেখাও।

grade='A+' এবং country='USA' এর স্টুডেন্ট দেখাও।

উদ্দেশ্য: SELECT, WHERE, AND/OR শিখা।
ডেটা টাইপ: VARCHAR, INT, DATE
প্রাইমারি কি: student_id

2️⃣ Sorting and Aliasing

টেবিল: students
প্রশ্ন:

সব স্টুডেন্টকে first_name এর অ্যালফাবেটিক অর্ডারে দেখাও।

স্টুডেন্টদের email এবং age দেখাও, যেখানে email এর নাম “Student Email” হিসেবে দেখানো হবে।

উদ্দেশ্য: ORDER BY, AS (Alias)
ডেটা টাইপ: VARCHAR, INT

3️⃣ DISTINCT & COUNT

টেবিল: students
প্রশ্ন:

কতটি ইউনিক দেশ আছে সেটা দেখাও।

প্রতিটি দেশের স্টুডেন্ট সংখ্যা দেখাও।

উদ্দেশ্য: DISTINCT, COUNT, GROUP BY
ডেটা টাইপ: VARCHAR
প্রাইমারি কি: student_id

4️⃣ INSERT & DELETE

টেবিল: "user"
প্রশ্ন:

নতুন ইউজার Michael INSERT করো।

ইউজার Bob DELETE করো।

উদ্দেশ্য: INSERT INTO, DELETE FROM
ডেটা টাইপ: VARCHAR
প্রাইমারি কি: id

5️⃣ FOREIGN KEY & REFERENCES

টেবিল: post
প্রশ্ন:

সব পোস্টের title এবং ইউজারের username দেখাও।

ইউজার ডিলিট করলে পোস্টে কি হবে, explain করো।

উদ্দেশ্য: FOREIGN KEY, REFERENCES, ON DELETE SET DEFAULT
ডেটা টাইপ: INTEGER (user_id), TEXT (title)
প্রাইমারি কি: id

6️⃣ UPDATE & TRUNCATE

টেবিল: post
প্রশ্ন:

পোস্টের title আপডেট করো যেখানে id=1।

সব পোস্ট মুছে ফেলার জন্য TRUNCATE ব্যবহার করো।

উদ্দেশ্য: UPDATE, TRUNCATE TABLE

7️⃣ CHECK & CONSTRAINTS

টেবিল: person5
প্রশ্ন:

৫০ বছরের বেশি বা ০ বছরের কম AGE INSERT করলে কি হবে explain করো।

first_name UNIQUE constraint কাজ করছে কিনা test করো।

উদ্দেশ্য: CHECK, UNIQUE, PRIMARY KEY
ডেটা টাইপ: VARCHAR, INT, DATE
প্রাইমারি কি: person_id

8️⃣ Advanced Filtering

টেবিল: students
প্রশ্ন:

age != 20 এবং country='USA' or country='Australia' শর্ত অনুযায়ী স্টুডেন্ট দেখাও।

grade A এবং B এর স্টুডেন্ট দেখাও।

উদ্দেশ্য: WHERE, !=, IN

9️⃣ JOIN Practice

টেবিল: "user", post
প্রশ্ন:

সব ইউজারের সাথে তাদের পোস্ট দেখাও।

যেসব ইউজারের পোস্ট নেই, তাদেরও দেখাও।

উদ্দেশ্য: INNER JOIN, LEFT JOIN
ডেটা টাইপ: INTEGER, VARCHAR

🔟 Aggregation

টেবিল: students
প্রশ্ন:

প্রতিটি গ্রেডে কয়জন স্টুডেন্ট আছে।

প্রতিটি দেশের গড় বয়স কত।

উদ্দেশ্য: GROUP BY, AVG, COUNT