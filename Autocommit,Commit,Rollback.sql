# Here the transactions will not be recorded automatically:
SET AUTOCOMMIT = OFF;

# Let's create a save point:
COMMIT;

# Example of accidentally deleting all rows in a table:
DELETE FROM employees;
SELECT * FROM employees;

# To cancel these modifications we execute:
ROLLBACK;

