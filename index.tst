Question 1: How can you retrieve the first 15 rows from the employees table?

SELECT * from employees WHERE ROWNUM <= 15

Question 2: How can you retrieve the last name, half of the salary, department name, and job title for each employee, joining the employees, departments, and jobs tables?

SELECT employees.last_name,employees.salary/2,departments.department_name,jobs.job_title FROM employees
JOIN departments ON employees.department_id=departments.department_id
JOIN jobs ON employees.job_id=jobs.job_id

Question 3: How can you retrieve the first name and salary of employees earning more than 10,000, excluding those named 'Nancy', 'Diana', and 'Alexander'?

SELECT first_name, salary FROM employees WHERE salary > 10000 AND first_name NOT IN ('Nancy', 'Diana', 'Alexander')

Question 4: How can you retrieve the first name and salary of employees whose salary is not 2100?

SELECT first_name, salary FROM employees WHERE salary ! = '2100'

Question 5: How can you concatenate an employee's first name, last name, job ID, and hire date into a single string for a person named 'Bruce'?

SELECT 'My first_name is ' || first_name || '   my last name is  ' || last_name || ', I am the ' || job_id || ' and my hire data is ' || hire_date || '.' AS Details FROM employees WHERE first_name='Bruce'
FROM employees

Question 6: How can you retrieve the first name, hire date, and 25% of the salary for employees hired before January 3, 2009?

SELECT first_name,hire_date,salary*0.25 FROM employees WHERE hire_date <'03-JAN-09'

Question 7: How can you retrieve the first names of employees whose first names end with the letter 'r'?

SELECT first_name FROM employees WHERE first_name LIKE  '%r'


Question 8: How can you retrieve the first name, last name, and weekly salary for employees whose weekly salary exceeds 600, rounding the salary to the nearest whole number?

SELECT first_name,last_name,ROUND(salary/52) AS weekly_salary FROM employees WHERE ROUND(salary/52)>600


Question 9: How can you retrieve the last name, half the salary, department name, and job title for all employees, correcting the syntax for table joins?

SELECT last_name, salary/2.employees,departments.department_name,job_title FROM employees

Question 10: How can you retrieve the last name of the employee with the shortest last name?

SELECT last_name
FROM employees
WHERE LENGTH(last_name) = (SELECT MIN(LENGTH(last_name)) FROM employees);