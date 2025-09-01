

CREATE TABLE person7 (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age > 0 AND age < 150), 
    dob DATE NOT NULL CHECK (dob < CURRENT_DATE) 
);

CREATE TABLE person5 (
    person_id SERIAL,
    first_name VARCHAR(50) NOT NULL UNIQUE, 
    last_name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age > 0 AND age < 150), 
    dob DATE NOT NULL CHECK (dob < CURRENT_DATE),
    PRIMARY KEY(person_id)
);


CREATE TABLE person6 (
    person_id SERIAL,
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age > 0 AND age < 150), 
    dob DATE NOT NULL CHECK (dob < CURRENT_DATE),
    PRIMARY KEY(person_id,first_name),
    UNIQUE(first_name,last_name)
);




-- work person 5 table


CREATE TABLE person5 (
    person_id SERIAL,
    first_name VARCHAR(50) NOT NULL UNIQUE, 
    last_name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age > 0 AND age < 150), 
    dob DATE NOT NULL CHECK (dob < CURRENT_DATE),
    PRIMARY KEY(person_id)
);


INSERT INTO person5 (first_name, last_name, age, dob) 
VALUES 
    ('Alice', 'Johnson', 25, '1999-04-15'),
    ('Bob', 'Smith', 30, '1994-08-22'),
    ('Charlie', 'Brown', 40, '1984-12-05'),
    ('David', 'Williams', 35, '1989-07-10'),
    ('Emma', 'Davis', 28, '1996-03-18');


SELECT * FROM person5