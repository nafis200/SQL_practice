-- hr department theke 

SELECT max(salary) from employee WHERE department_name = 'HR';

SELECT * FROM employee WHERE salary > (SELECT max(salary) from employee WHERE department_name = 'HR')

SELECT *,(SELECT sum(salary) from employee) FROM employee

SELECT * from (SELECT department_name, sum(salary) FROM employee GROUP BY department_name) as sum_dept_salary