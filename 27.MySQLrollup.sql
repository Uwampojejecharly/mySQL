#  Added group by clause with rollup
SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date with rollup;

# Let's count the transaction ideas:
SELECT COUNT(transactions_id), order_date
FROM transactions
GROUP BY order_date with rollup;

# Hourly salary of each employee:
SELECT SUM(hourly_pay) AS "hourly pay", employee_id
FROM employees
GROUP BY employee_id WITH ROLLUP;