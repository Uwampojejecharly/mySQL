# Inserting 2 lines:
INSERT INTO transactions (transaction_id, amount, customer_id)
VALUES (1005, "2.49", "4");
#
INSERT INTO transactions (transaction_id, amount, customer_id)
VALUES (1006, "2.48", NULL);

# Inserting a column:
ALTER TABLE transactions
ADD COLUMN order_date VARCHAR(50) AfTER customer_id;
#
UPDATE transactions
SET order_date = "2023-01-01"
WHERE transaction_id = 1000;
#
UPDATE transactions
SET order_date = "2023-01-01"
WHERE transaction_id = 1001;
# 
UPDATE transactions
SET order_date = "2023-01-0"
WHERE transaction_id = 1002;
#
UPDATE transactions
SET order_date = "2023-01-02"
WHERE transaction_id = 1003;
#
UPDATE transactions
SET order_date = "2023-01-03"
WHERE transaction_id = 1004;
#
UPDATE transactions
SET order_date = "2023-01-03"
WHERE transaction_id = 1005;
#
UPDATE transactions
SET order_date = "2023-01-03"
WHERE transaction_id = 1006;

# Grouping by order:
SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date;

# Grouping by client id:
SELECT SUM(amount), customer_id
FROM transactions
GROUP BY customer_id;








