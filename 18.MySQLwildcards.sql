# Generic character
# Find all first names starting with S:
SELECT * FROM employees
WHERE first_name LIKE "S%";

# For dates:
SELECT * FROM employees
WHERE hire_date LIKE "2023%";

# A job containing the word ook:
SELECT * FROM employees
WHERE job LIKE "_ook%";