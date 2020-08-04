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

--Data Analysis #1
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from employees, salaries
WHERE employees.emp_no = salaries.emp_no; 

--Data Analysis #2
select first_name, last_name, hire_date
from employees
where hire_date Between '1985-12-31' and '1987-01-01';

--Data Analysis #3
select dept_manager.emp_no,employees.last_name, employees.first_name, departments.dept_name
From dept_manager, employees, departments
where dept_manager.emp_no = employees.emp_no AND dept_manager.dept_no=departments.dept_no;

--Data Analysis #4
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp, employees, departments
where departments.dept_no = dept_emp.dept_no AND dept_emp.emp_no = employees.emp_no;

--Data Analysis #5
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

--Data Analysis #6
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp, employees, departments
where departments.dept_name = 'Sales' AND dept_emp.emp_no = employees.emp_no;

--Data Analysis #7
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp, employees, departments
where (departments.dept_name = 'Sales' AND dept_emp.emp_no = employees.emp_no)
OR (departments.dept_name='Development' AND dept_emp.emp_no = employees.emp_no);

--Data Analysis #8
select last_name, count(*)
From employees
group by last_name 
order by count desc;

--ID number 499942
select * from employees
where emp_no ='499942';
