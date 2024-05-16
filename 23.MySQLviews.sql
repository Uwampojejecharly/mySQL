# Creation of an employee attendance sheet consisting of employee first and last names
# Creation of a view of first name and last name of the table:
CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

# We classify them in ascending order:
SELECT * FROM employee_attendance
ORDER BY last_name ASC;

# Deleting view:
DROP VIEW employee_attendance;

# Adding an additional column:
ALTER TABLE cestomers
ADD COLUMN email VARCHAR(50);
SELECT * FROM cestomers;

# Let's update these lines:
UPDATE customers
SET email = "FFish@gmail.com"
WHERE customer_id = 1;
SELECT * FROM customers;

# 
UPDATE customers
SET email = "LLobster@gmail.com"
WHERE customer_id = 2;
SELECT * FROM customers;

#
UPDATE customers
SET email = "BBas@gmail.com"
WHERE customer_id = 3;
SELECT * FROM customers;

#
UPDATE customers
SET email = "PPuf@gmail.com"
WHERE customer_id = 4;
SELECT * FROM customers;

# Let's create a view from these customer emails:
 CREATE VIEW customer_emails  AS
 SELECT email
 FROM customers;
 
# Adding an additional client:
INSERT INTO customers
VALUES (5, "pearl", "Krabs", NULL, "PKrabs@gmail.com");

