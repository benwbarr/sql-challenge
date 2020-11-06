CREATE TABLE departments (
  id SERIAL,
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

CREATE TABLE  employees (
  id SERIAL,
  emp_no INT,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date Date NOT NULL,
  PRIMARY KEY (emp_no)
);

CREATE TABLE  dept_emp (
  id SERIAL,
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (id)
);

CREATE TABLE  dept_manager (
  id SERIAL,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY(id)
);

CREATE TABLE  salaries (
  id SERIAL,
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INT NOT NULL
  PRIMARY KEY(id)
);

CREATE TABLE  titles (
  id SERIAL,
  title_id VARCHAR(30) NOT NULL,
  title VARCHAR(30) NOT NULL,
  PRIMARY KEY(title_id)
);

SELECT *
FROM departments;
SELECT *
FROM employees;
SELECT *
FROM dept_emp;
SELECT *
FROM dept_manager;
SELECT *
FROM salaries;
SELECT *
FROM titles;