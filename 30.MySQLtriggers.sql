# We will add a salary column:
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10, 2) AFTER hourly_pay;
SELECT * FROM employees;

# Let's update our table:
UPDATE employees
SET salary = hourly_pay * 2080;

# Creating a trigger:
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

# Let's update our table:
UPDATE employees
SET hourly_pay = hourly_pay + 1;
SELECT * FROM employees;

# Plankton removal:
DELETE FROM employees
WHERE employee_id = 6;
SELECT * FROM employees;

# Creating a trigger:
CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

# Let's insert a new employee:
INSERT INTO employees
VALUES(6, "Sheldon", "Plankton", 10, NULL, "janitor", "2023-01-07", 5);

# Creating a new table:
CREATE TABLE expenses(
	expense_id INT PRIMARY KEY,
	expense_name VARCHAR(50),
    expense_total DECIMAL(10, 2)
);
SELECT * FROM expenses;

# Inserting some values:
INSERT INTO expenses
VALUES (1, "salaries", 0),
	   (2, "supplies", 0),
       (3, "taxes", 0);
       
# Update expenses:
UPDATE expenses
SET expense_total = (SELECT SUM(salary) FROM employees)
WHERE expense_name = "salaires";

# Let's create a trigger:
CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH row
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

# Again Plankton Removal:
DELETE FROM employees
WHERE employee_id = 6;
 
 # Let's create a trigger that will update the salaries:
CREATE TRIGGER after_salary_insert
BEFORE INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";

# Insertion of a new employee:
INSERT INTO employees
VALUES(6, "Sheldon", "Plankton", 10, Null, "janitor", "2023-01-07", 5);

# Another trigger example:
CREATE TRIGGER after_salary_update
BEFORE INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = "salaries";

# Update on salary increase:
UPDATE employees
SET hourly_pay = 100
WHERE employee_id = 1;
