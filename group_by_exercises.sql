use employees;

SELECT DISTINCT  title FROM titles;

SELECT  last_name
FROM employees
WHERE last_name  LIKE 'E%E'
GROUP BY last_name
order by last_name
;

SELECT first_name, last_name
FROM employees
WHERE last_name  LIKE 'E%E'
;


SELECT distinct last_name
FROM employees
WHERE last_name  LIKE '%q%' and last_name not like '%qu%'
;

select count(last_name), last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by last_name;

select count(gender), gender
from employees
where first_name = 'IRENA' or first_name = 'Vidya'
or first_name = 'Maya'
group by gender;