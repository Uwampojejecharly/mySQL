#Creating a table:
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

# To see the Selection  of table:
SELECT * FROM employees;

#To rename a table:
RENAME TABLE employees TO workers;

# Table deletion:
DROP TABLE employees;

#Modifying a table:
ALTER TABLE employees
ADD phone_number VARCHAR(15);

#To modifying and rename a column:
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

#To change the character:
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

#To move one column to another:
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name; #or just 'FIRST'

#column deletion
ALTER TABLE employees
DROP COLUMN email;


