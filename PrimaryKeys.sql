# Created a Transactions table:
CREATE TABLE  transactions(
	transaction_id INT PRIMARY KEY,
    amount DECIMAL(5, 2)
);

# Transaction insertion:
INSERT INTO transactions
VALUES (1000, 4.99),
       (1001, 2.89),
       (1002, 3.38),
       (1003, 4.99);

# To surch someone:
SELECT amount
FROM transactions
WHERE transaction_id = 1003;

SELECT * FROM transactions; 

