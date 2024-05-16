# Number of transactions that took place on a certain date:
SELECT COUNT(amount)
FROM transactions;

# Let's find the maximum value of the amount in this column using the max function in the set of parentheses:
SELECT MAX(amount) AS maximum
FROM transactions;

# There is also the MIN to find the minimum: 
SELECT MIN(amount) AS minimum
FROM transactions;

# There is also the method which is the AVG:
SELECT AVG(amount) AS averge
FROM transactions;

# Or for the sum of all transactions also using the sum function:
SELECT SUM(amount) AS sum
FROM transactions;

# Concatenate the first and last names of employees:
SELECT CONCAT(first_name," ",last_name) AS full_name
FROM employees;