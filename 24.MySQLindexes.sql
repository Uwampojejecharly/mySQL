# To view the current indexes of a table:
SHOW INDEXES FROM customers;

# To create an index:
CREATE INDEX last_name_idx
ON customers(last_name);

# To create a multi-column index:
CREATE INDEX last_name_first_name_idx
ON customers(last_name, first_name);

# To delete an index:
ALTER TABLE customers
DROP INDEX last_name_idx;

# To search for a customer using first and last name:
SELECT * FROM customers
WHERE lat_name = "puff" AND first_name = "Poppy";

# But if we had to search only for the first name we would use:
SELECT * FROM customers
WHERE first_name = "Poppy";