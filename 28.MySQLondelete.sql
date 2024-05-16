# Removing the foreign key:
ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;

# Added a foreign key construct:
ALTER TABLE transactions
ADD constraint fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE SET NULL;

# Deleting customer number 4 from the customers table:
DELETE FROM customers
WHERE customer_id = 4;
SELECT * FROM transactions;

# Will add poppy puff to our customer table:
INSERT INTO customers
values(4, "Poppy", "puff", 2, "PPuff@gmail.com");
SELECT * FROM customers;

# Let's remove the current foreign key constraint from our transaction table:
ALTER TABLE transactions
DROP FOREIGN KEY fk_customer_id;

# Adding Cascading Clause when deleting to a table that already exists:
ALTER TABLE transactions
ADD CONSTRAINT fk_transactions_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;

# We update the line 1005:
UPDATE transactions
SET customer_id = 4
WHERE trnasaction_id = 1005;

# We remove it from clients:
DELETE FROM customers
WHERE customer_id = 4;
