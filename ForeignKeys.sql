# Created a customer table:
CREATE TABLE customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
	last_name VARCHAR(50)
);

# We have 3 clients in this table, each of which has a unique identifier:
INSERT INTO customers (first_name, last_name)
values ("Fred", "Fish"),
	   ("Larry", "Lobster"),
       ("Bubble", "Bass");

# We deleted the current 'transactions' table to create another one to apply the foreign key constraint:
DROP TABLE transactions;
# Then:
CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
	customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

# To delete a foreign key: 
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;

# To give it a unique key:
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEy(customer_id) REFERENCES customers(customer_id);

# We will delete the rows from the transactions table and reinsert them and add a value for each foreign key:
DELETE FROM transactions;
SELECT * FROM transactions;
# First modify the table transactions:
ALTER TABLE transactions
AUTO_INCREMENT = 1000;
# Then:
INSERT INTO transactions (amount, customer_id)
values (4.99, 3),
	   (2.89, 2),
       (3.38, 3),
       (4.99, 1);

# Here is what allows us to see that we cannot delete or update a parent row, a foreign key constraint fails:
DELETE FROM cestomers
WHERE customer_id = 3;

