# Self-join:
SELECT a.customer_id, a.first_name, a.last_name,
       b.first_name, b.last_name
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

# Concatenate 2 columns:
SELECT a.customer_id, a.first_name, a.last_name,
       CONCAT(b.first_name," ", b.last_name) AS "referred_by"
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;

# Let's add an additional column called Supervisor ID
# Added another column:
ALTER TABLE employees
ADD supervisor_id INT;
SELECT * FROM employees;

# Set supervisor ID:
UPDATE employees
SET supervisor_id = 5
WHERE employee_id = 2;
SELECT * FROM employees;

# We will display the first and last name of all our employees as well as the full name of the person who supervises them:
SELECT *
FROM employees AS a
INNER JOIN employees AS b 
ON a.supervisor_id = b.employee_id;
