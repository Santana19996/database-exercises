use employees;
show tables;
# Completed
SELECT first_name
FROM employees
WHERE first_name in
      ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;
# 2 Completed
SELECT first_name, last_name
FROM employees
WHERE first_name in
      ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;
# 4 completed
SELECT first_name, last_name
FROM employees
WHERE first_name in
      ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# 5 reverse
SELECT first_name, last_name
FROM employees
WHERE first_name in
      ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name DESC;


SELECT first_name
FROM employees
WHERE first_name = 'Irena'
   or first_name = 'Vidya'
   or first_name = 'Maya';


SELECT first_name
FROM employees
WHERE first_name in
      ('Irena', 'Vidya', 'Maya')
  AND gender = ('M');

# 5 completed
SELECT last_name
FROM employees
WHERE last_name LIKE '%E'
ORDER BY emp_no;
# 5 Rverse

SELECT last_name, emp_no

FROM employees
WHERE last_name LIKE '%E'
ORDER BY emp_no DESC, last_name;



SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';



SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  and last_name not like '%qu%';


# Exercise 2
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# SELECT * from employees
# where DATE_FORMAT('12-25','%m-%d');


# Exercise 3
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

# Exercise 4
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;


# Exercise 5
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC;

# Exercise 6
SELECT DATEDIFF(curdate(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
;