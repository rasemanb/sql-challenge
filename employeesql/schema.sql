drop table if exists departments cascade;
drop table if exists dept_emp cascade;
drop table if exists dept_manager cascade;
drop table if exists employees cascade;
drop table if exists salaries cascade;
drop table if exists titles cascade;

create table departments(
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
	
);
select * from departments;

create table dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
select * from dept_emp;

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no)
	
);
select * from dept_manager;

create table employees(
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key(emp_no),
	foreign key (emp_title_id) references titles(title_id)
);
select * from employees;

create table salaries(
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);
select * from salaries;

create table titles(
	title_id varchar not null,
	title varchar not null,
	primary key (title_id)
);
select * from titles;