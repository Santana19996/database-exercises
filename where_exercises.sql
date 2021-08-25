use employees;
show tables;

SELECT first_name
FROM employees
WHERE first_name in
    ('Irena','Vidya','Maya');

SELECT first_name
 FROM employees
WHERE first_name  = 'Irena' or
      first_name = 'Vidya' or
      first_name =  'Maya';


SELECT first_name
FROM employees
 WHERE first_name in
   ('Irena','Vidya','Maya') AND gender = ('M');


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';





SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';



SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' and  last_name not  like  '%qu%';