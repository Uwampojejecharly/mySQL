# Let's add a work column:
ALTER TABLE employees
ADD COLUMN job VARCHAR(25) AfTER hourly_pay;

# Addition of some employees to our employees:
UPDATE employees
SET job = "manager"
WHERE employee_id = 1;
SELECT * FROM employees;

#
UPDATE employees
SET job = "cashier"
WHERE employee_id = 2;
SELECT * FROM employees;

#
UPDATE employees
SET job = "cook"
WHERE employee_id = 3;
SELECT * FROM employees;

#
UPDATE employees
SET job = "cook"
WHERE employee_id = 4;
SELECT * FROM employees;

#
UPDATE employees
SET job = "asst. manager"
WHERE employee_id = 5;
SELECT * FROM employees;

#
UPDATE employees
SET job = "janitor"
WHERE employee_id = 6;
SELECT * FROM employees;

# Logical operator:
SELECT *
FROM employees
WHERE hire_date < "2023-01-05" AND job = "cook";

# Or : 
SELECT *
FROM employees
WHERE job = "cook";

# Or : 
SELECT *
FROM employees
WHERE job = "cook" OR job = "cashier";

# Or : 
SELECT *
FROM employees
WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07" ;

# Or : 
SELECT *
FROM employees
WHERE job IN ("cook", "cashier", "janitor");