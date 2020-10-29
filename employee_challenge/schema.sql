create table employee(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(10),
	hire_date DATE
);

select * from employee;

create table department(
dept_no VARCHAR(10),
dept_name VARCHAR(50)
);

select * from department;