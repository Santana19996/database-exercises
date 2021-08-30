use employees;
# Find all the employees with the same hire date as employee 101010 using a subquery. (69 Rows)

SELECT * from employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    where emp_no = 101010
);
# Find all the titles held by all employees with the first name Aamod. (314 total titles, 6 unique titles)

SELECT title from titles
where emp_no IN(
    select emp_no
    from employees
    where first_name like 'Aamod'
    );

# Find all the current department managers that are female.

SELECT  first_name,last_name from  employees
where emp_no IN(
#     GRABBING EMP # IN EMPLOYEES
    select emp_no
    from dept_manager
#     Now grabbing emp# from dept_manager
    where dept_manager.emp_no IN(
        SELECT emp_no
        from employees
        where gender like 'F'
        )
    order by to_date
    );


SELECT  dept_name from  departments
where dept_no IN(
#     GRABBING EMP # IN EMPLOYEES
    select dept_no
    from dept_manager
#     Now grabbing emp# from dept_manager
    where dept_manager.dept_no IN(
        SELECT dept_no
        from employees
        where gender like 'F'
    )
    order by  NOW()
);

