create table titles(
	title_id varchar(10) primary key,
	title varchar(50)
);
select * from titles;

create table employee(
	emp_no INT PRIMARY KEY,
	title_id VARCHAR(10),
	foreign key (title_id) references titles(title_id),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(10),
	hire_date DATE
);

select * from employee;

create table department(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50)
);

select * from department;

create table dept_emp(
	emp_no int,
	FOREIGN KEY(emp_no) REFERENCES employee(emp_no),
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) references department(dept_no)
);

select * from dept_emp;

create table dept_manager(
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) references department(dept_no),
	emp_no int,
	FOREIGN KEY (emp_no) references employee(emp_no)
);

select * from dept_manager;

create table salaries(
	emp_no int,
	FOREIGN KEY (emp_no) references employee(emp_no),
	salary int
);

select * from salaries;

