# A verification constraint:
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHeck(hourly_pay >= 10.00);

# By adding this insertion, the check constaint is violated:
INSERT INTO employees
VALUES (6, "Sheldon","Plankton", 5.00, "2023-01-07 ");

# The true is:
INSERT INTO employees
VALUES (6, "Sheldon","Plankton", 10.00, "2023-01-07 ");

# To delete the check:
ALTER TABLE employees
DROP CHECK chk_hourly_pay;