

SELECT upper(first_name) from students

SELECT concat(first_name,' ',last_name) from students

SELECT length(first_name) from students



-- Function 2 types
-- 1. Scalar
-- 2. aggregate

SELECT avg(age)from students

SELECT max(age)from students

SELECT min(age)from students

SELECT sum(age)from students

SELECT count(*)from students

-- mixture of scalar and aggregate

Select max(length(first_name)) from students