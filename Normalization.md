
<!-- 1NF -->

1. Atomic values
2. Unique coloumns Names
3. Positional dependency of data
4. Coloumn should contain same type of data 
5. Determine primary key

Serial_No        Titles     course

11                Xkon      cn,os

12                Ykon      java

13                Zkon      c++,c

Serial_No	Titles	       Course
11	         Xkon	         CN
11	         Xkon	         OS
12	         Ykon            Java
13	         Zkon	        C++
13	         Zkon	         C

Primary key (serial_no + course)


<!-- 2NF -->

1. 1NF.
2. Must not contain any non-prime/non-key attribute that is functionally dependent on a proper subset of any candidate key of the relation.

sId  cId  CName    Instructor

101   1   Math     Prof.smith

102   2   Science  Prof.Johnson

101   3   History  Prof.Adams

103   1   Math     Prof.smith

Composite primary key (sId + cId)

CId partial dependency CName

1 ---> math

1 ---> math

x1 == y1 and x4 == y4

Instructor        

CId  instructor

1    Prof.smith

2    Prof.Johnson

3    Prof.Adams

Course

CId   CName

1     Math

2     Science

3     History

Lossy decomposition

StudentCourse

SId   CId

101   1

102   2

101   3

103   1


<!-- 2NF -->

Table 1: Student Table (Maintains Student Information)

Serial_No	Titles
11	        Xkon
12	        Ykon
13	        Zkon

Table 2: Course Table (Maintains Course Information)
Course_Id	Course_Name
C1	        CN
C2	        OS
C3	        Java
C4	        C++
C5	        C

Table 3: Student-Course Relationship (Maintains Student-Course Mapping)
Serial_No	Course_Id
11	        C1
11	        C2
12	        C3
13	        C4
13	        C5



<!-- 3NF -->

1. Must be in 2NF
2. Must not contain transitive dependency

x--->  y

y ---> z

x ---> z


Table with Transitive Dependency (Not in 3NF)

student_id	student_name	student_phone	state	country	student_age

101	        Alice	        1234567890	    Texas	USA	     20
102	        Bob	            0987654321	    Florida	USA	     22
103	        Charlie	        5678901234	    Ontario	Canada	 21

Transitive Dependency Explanation (বাংলায়)
Primary Key: student_id (এই কলামের মাধ্যমে প্রতিটি সারি ইউনিকভাবে চিহ্নিত হয়)।

Direct Dependency: student_name, student_phone, এবং student_age সরাসরি student_id-এর উপর নির্ভরশীল।

Transitive Dependency: state → country

এখানে state কলামটি student_id-এর উপর নির্ভরশীল।

কিন্তু country কলামটি সরাসরি student_id-এর উপর নির্ভরশীল না, বরং এটি state-এর উপর নির্ভরশীল (যেমন, Texas হলেই USA হবে, Ontario হলেই Canada হবে)।

এটি Transitive Dependency, যা 3NF লঙ্ঘন করে।

How to Convert to 3NF?
Transitive Dependency দূর করতে State Table আলাদা করতে হবে।

Student Table (Without State & Country)

student_id	student_name	student_phone	student_age	state_id
101	        Alice	        1234567890	    20	          S1
102	        Bob	            0987654321	    22	          S2
103	        Charlie	        5678901234	    21	          S3


state_id	state	country
S1	        Texas	USA
S2	        Florida	USA
S3	        Ontario	Canada