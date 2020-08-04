CREATE TABLE departments (
dept_no nchar(4),
dept_name varchar(30)
);

--stopping point
CREATE TABLE dept_manager(
dept_no varchar(10),
emp_no int
);

CREATE TABLE dept_emp(
emp_no int,
dept_no varchar(10)
);

CREATE TABLE employees (
emp_no int,
emp_title nchar(5),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex nchar(1),
hire_date date
);

CREATE TABLE salaries (
emp_no int,
salary money
);

CREATE TABLE titles(
title_id nchar(5),
title varchar(30)
);

--stopping point