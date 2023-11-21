--create employee tables schema for each department

--departments_csv table
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--create titles_csv table
DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR (30) NOT NULL,
	PRIMARY KEY (title_id)
);

--create employees_csv table
DROP TABLE IF EXISTS emloyees;
CREATE TABLE employees (
	emp_no INT NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

--create department employees table
DROP TABLE IF EXISTS depart_emp;
CREATE TABLE depart_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--create dept_manager_csv table
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--create salaries_csv table
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);





