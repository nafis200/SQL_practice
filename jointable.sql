


-- create table post (
-- user_id INTEGER REFERENCES user(id)
--   )

-- 2 two table post and user

--  post e id,title,user_id

-- user e id and username

-- now post table e user er id ache user table er tar username lagbe.

-- Create two table

-- user reserve key word

-- Inner Join

CREATE TABLE "user"(
  id SERIAL PRIMARY KEY,
  username VARCHAR(30) NOT NULL
);

INSERT INTO "user" (username) VALUES 
('Alice'),
('Bob'),
('Charlie'),
('David'),
('Eve');

SELECT * from "user"

CREATE TABLE post(
  id SERIAL PRIMARY KEY,
  title text NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);

INSERT INTO post (title, user_id) VALUES 
('My first post', 1),
('Learning SQL', 2),
('PostgreSQL is awesome', 3),
('Database design tips', 4),
('Best practices for indexing', 5),
('How to use JOIN in SQL', 1),
('Understanding transactions', 2),
('Normalization in databases', 3),
('Optimizing queries', 4),
('Advanced SQL techniques', 5);

ALTER TABLE post
  ALTER COLUMN user_id set NOT NULL

SELECT * FROM post

SELECT * FROM post

-- inner Join

-- post table er userId dhore user table er username catch kori.


SELECT title,username FROM post JOIN "user" ON post.user_id = "user".id


SELECT * FROM post JOIN "user" ON post.user_id = "user".id

SELECT post.id FROM post JOIN "user" ON post.user_id = "user".id

SELECT * FROM post as p JOIN "user" as u ON p.user_id = "u".id

-- LEFT JOIN AND RIGHT JOIN

-- INNER join e user age and post pore lekle ta oivabe dekabe but some times er orders matter kore

INSERT INTO post (title, user_id) VALUES 
('Nafis ahamed', NULL);

SELECT * FROM post as p JOIN "user" as u ON p.user_id = "u".id

-- foriegn key null howate inner join e table er data ei ase nai combine join e so face problem


-- 50.7 video 4 min

-- LEFT JOIN

SELECT * FROM post as p LEFT JOIN "user" as u ON p.user_id = "u".id


-- RIGHT JOIN

INSERT INTO "user" (username) VALUES 
('Alice');

SELECT * FROM post as p RIGHT JOIN "user" as u ON p.user_id = "u".id


-- FULL, CROSS, NATURAL JOIN

-- FULL join

SELECT * FROM post as p FULL JOIN "user" as u ON p.user_id = "u".id;

-- cross join

SELECT * 
FROM post AS p 
CROSS JOIN "user" AS u;

-- natural join

-- common cloumn thakte hobe.

 CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);
INSERT INTO department (dept_name) VALUES 
('Engineering'),
('Human Resources');


CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INTEGER REFERENCES department(dept_id) ON DELETE SET NULL
);


INSERT INTO employee (emp_name, dept_id) VALUES 
('Alice', 1),
('Bob', 2)

SELECT * FROM employee NATURAL JOIN department



