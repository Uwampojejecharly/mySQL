# To create the procedure:
DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
	SELECT * FROM customers;
END$$
DELIMITER ;

# This shows us the content of customers, so it executes the stoker code in the stored procedure:
CALL get_customers();

# To store a stored procedure:
DROP PROCEDURE get_customers;

# Creating a new procedure:
DELIMITER $$
CREATE PROCEDURE find_customer(IN id int)
BEGIN
	SELECT *
    FROM customers
    WHERE customer_id = id;
END $$
DELIMITER ;

# Let's call find customer in the set of parentheses that we need to pass a customer ID number:
CALL find_customer(3);

# Deleting the procedure:
DROP PROCEDURE find_customer;

# Creating the find customer() procedure:
DELIMITER $$
CREATE PROCEDURE find_customer(IN f_name VARCHAR(50),
                               IN l_name VARCHAR(50))
BEGIN
	SELECT *
    FROM customers
    WHERE first_name = f_name AND last_name = l_name;
END $$
DELIMITER ;

# Let's call find customer:
CALL find_customer("Larry", "Lobster");
