# Added lines :
INSERT INTO employees
VALUES  (1, "Eugene", "Krabs", 25.50, "2023-01-02"),
        (2, "Elis", "Irakoze", 25.50, "2023-01-03"),
        (3, "Mathias", "Uwera", 12.50, "2023-01-04"),
        (4, "Rich", "Dusabe", 12.50, "2023-01-05"),
        (5, "Sandy", "Douglas", 17.25, "2023-01-06");

# Deleteted a row :
DELETE FROM employees
WHERE employee_id = 1
AND first_name = "Eugene"
AND last_name = "Krabs"
AND hourly_pay = 25.50
AND hire_date = "2024-01-02"
LIMIT 1;

# Inserting a row if the columns are not compatible :
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "Sheldon", "Ciza");
