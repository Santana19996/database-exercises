use employees;

SELECT DISTINCT  last_name
FROM employees  ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no from salaries
order by salary  DESC
LIMIT 5;


SELECT DISTINCT  emp_no, salary from salaries
order by salary  DESC
LIMIT 5 OFFSET 45;

SELECT  * from salaries where emp_no = 492164;