
SHOW TIMEZONE

SELECT now()

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)


insert into timez VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00')

SELECT * from timez

SELECT CURRENT_DATE;

SELECT now()::date


SELECT now()::time

-- search method select to_char

SELECT to_char(now(),'yyyy/mm/dd')

SELECT to_char(now(),'dd/mm/yyyy')

SELECT CURRENT_DATE - INTERVAL '1year 2 month'

SELECT age(CURRENT_DATE,'2000-04-14')

SELECT * FROM students

select *, age(CURRENT_DATE,dob) from students

SELECT extract(year from '2024-01-12'::date)

select '0'::BOOLEAN

