# Inserting a new line transaction:
INSERT INTO customers (amount, customer_id)
VALUES (1.00, NULL);

# Additional customer insertion in the customer's first name:
INSERT INTO customers (first_name, last_name)
VALUES ("Poppy", "Puff");

# inner join from 2 tables:
SELECT *
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

# Specific column selection:
SELECT transaction_id, amount, first_name, last_name
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id; # This would make it much easier to find the desired first and last name.

# Left join:
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

# Right join:
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;

