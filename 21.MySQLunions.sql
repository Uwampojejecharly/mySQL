# Window with the results of the 2 tables:
SELECT * FROM customers
UNION
SELECT * FROM product;

# If the tables do not have identical columns we can join them with identical columns:
SELECT first_name, last_name FROM employees
UNION
SELECT first_name, last_name FROM customers;

# We are going to insert a person from the employees table into custommers:
INSERT into customers
VALUE(5, "sheldon", "plankton");
SELECT * FROM customers;