# To select a list of names :
SELECT first_name, last_name
FROM employees;

# Selection :
SELECT *
FROM employees
WHERE employee_id = 2;
# Or :
SELECT *
FROM employees
WHERE first_name = "Rich";

# Or :
SELECT *
FROM employees
WHERE hire_date <= "2023-01-03";  

#Or :
SELECT *
FROM employees
WHERE hire_date = NULL;  

# Or :
SELECT *
FROM employees
WHERE hire_date IS NOT NULL;  
