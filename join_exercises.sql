use employees;

SELECT dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name) AS 'Depatment Manager'
FROM employees JOIN dept_manager dm ON emp_no = dm.emp_no
                 JOIN departments  ON dept_no = dept_no;

