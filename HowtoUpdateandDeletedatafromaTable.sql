#To insert missing data on line 6 :
UPDATE employees
SET hourly_pay = 10.50,
	hire_date = "2023-01-07"
WHERE  employee_id = 6; # I had first to disable secure update mode and then reactivate it at the end of this task.

# To set a null field :
UPDATE employees
SET hire_date = NULL
WHERE  employee_id = 6;

# To give the same salary to everyone :
UPDATE employees
SET hourly_pay = 10.25;

# To delete a row in a table :
DELETE FROM employees
WHERE employee_id = 6;
