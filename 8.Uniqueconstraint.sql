# Created a product table:
CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(25) UNIQUE,
    price DECIMAL(4, 2)
); 

# Inserted product values:
INSERT INTO products
Values  (100, "hamburger", 3.99),
	    (101, "fries", 1.89),
        (102, "soda",1.49),
        (103, "ice cream", 1.49);
       