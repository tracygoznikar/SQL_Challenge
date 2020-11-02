-- Start Queries
--List the following details of each employee: employee number, last name, first name, sex, and salary.
select employee.emp_no, employee.last_name, employee.first_name, employee.sex, salaries.salary
from employee
INNER JOIN salaries ON
employee.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employee where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';


--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
select employee.emp_no, employee.last_name, employee.first_name, dept_manager.dept_no, department.dept_name
from employee
inner join dept_manager on 
employee.emp_no=dept_manager.emp_no 
inner join department on
department.dept_no=dept_manager.dept_no;

--List the department of each employee with the following information: employee number, last name, 
--first name, and department name
select employee.emp_no, employee.last_name, employee.first_name, department.dept_name
from employee
inner join dept_emp on 
employee.emp_no=dept_emp.emp_no 
inner join department on
department.dept_no=dept_emp.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employee where first_name = 'Hercules' and last_name like '%B%';


select * from employee;
select * from dept_manager;
select * from department;