use employees;

SELECT * FROM departments;


# 1
select departments.dept_name                                  as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments
         join dept_manager on departments.dept_no = dept_manager.dept_no
         join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01'
order by departments.dept_name;


# 2
select departments.dept_name                                  as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments
         join dept_manager on departments.dept_no = dept_manager.dept_no
         join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01'
  and employees.gender = 'F'
order by departments.dept_name;


# 3
select titles.title, count(*)
from titles
         join dept_emp on titles.emp_no = dept_emp.emp_no
         join departments on dept_emp.dept_no = departments.dept_no
where titles.to_date = '9999-01-01'
  and dept_emp.to_date = '9999-01-01'
  and departments.dept_name = 'Customer Service'
group by titles.title;


# 4
select departments.dept_name                                  as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Name',
       salaries.salary                                        as 'Salary'
from departments
         join dept_manager on departments.dept_no = dept_manager.dept_no
         join employees on dept_manager.emp_no = employees.emp_no
         join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01'
  and salaries.to_date = '9999-01-01'
order by departments.dept_name;
