--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp_no,
	   last_name AS "ln",
	   first_name AS "fn",
	   sex,
	   salary
FROM employees AS "e"
  INNER JOIN salaries
    USING(emp_no)
	  ORDER BY emp_no;
	
--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name AS "fn",
	   last_name AS "ln",
	   hire_date AS "hd"
FROM employees AS "e"
  WHERE hire_date between '1986-01-01' and '1986-12-31'
    ORDER BY ln;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_no AS "dno",
	   dept_name AS "dna",
	   emp_no AS "en",
	   last_name AS "ln",
	   first_name AS "fn"
FROM dept_manager as dm
  INNER JOIN departments as d
    USING(dept_no)
  INNER JOIN employees as e
    USING(emp_no)
      ORDER BY dno;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT emp_no AS "en",
	   last_name AS "ln",
	   first_name AS "fn",
	   dept_name AS "dna"
FROM employees AS "e"
  INNER JOIN dept_emp AS de
    USING(emp_no)
  INNER JOIN departments AS d
    USING(dept_no)
	  ORDER BY en;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.

SELECT first_name AS "fn",
	   last_name AS "ln",
	   sex
FROM employees AS "e"	   
  WHERE first_name ='Hercules'
    AND last_name LIKE 'B%'
  ORDER BY ln;
  
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT emp_no AS "en",
	   last_name AS "ln",
	   first_name AS "fn",
	   dept_name AS "dna"
FROM employees AS "e"
  INNER JOIN dept_emp AS de
    USING(emp_no)
  INNER JOIN departments AS d
    USING(dept_no)
	  WHERE dept_name = 'Sales'
	ORDER BY en;
 
 --7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
 
SELECT emp_no AS "en",
	   last_name AS "ln",
	   first_name AS "fn",
	   dept_name AS "dna"
FROM employees AS "e"
  INNER JOIN dept_emp AS de
    USING(emp_no)
  INNER JOIN departments AS d
    USING(dept_no)
	  WHERE dept_name = 'Sales' OR dept_name = 'Development'
	ORDER BY en; 

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name AS "ln",
	   COUNT(last_name)
FROM employees AS "e"
  GROUP BY ln
    ORDER BY COUNT DESC;
 
