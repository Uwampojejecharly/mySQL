#  Average hourly salary of an employee:
SELECT AVG(hourly_pay) FROM employees;

# Comparisons of each employee's hourly wage to the average:
SELECT first_name, last_name, hourly_pay,
	   (SELECT AVG(hourly_pay) FROM employees) AS avg_pay
FROM emploiyees;

# Find all employees whose hourly wage is higher than the average wage:
SELECT first_name, last_name, hourly_pay
FROM employees
WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM employees);

# To find the first and last name of each customer who placed an order:
SELECT DISTINCT customer_id
FROM transactions
WHERE customer_id IS NOT NULL;