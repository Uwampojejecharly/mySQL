# Added the lines:
INSERT INTO products
VALUES (104, "straw", 0.00),
	   (105, "napkin", 0.00),
       (106, "fork", 0.00),
       (107, "spoon", 0.00);

# Deletion of products greater than or equal to 104:
DELETE FROM products
WHERE product_id >= 104;
SELECT * FROM products;
 
# Modifying a table to include a constraint:
ALTER TABLE products
ALTER price SET DEFAULT 0;

# Inserting the products again:
INSERT INTO products (product_id, product_name)
VALUES (104, "straw"),
       (105, "napkin"),
       (106, "fork"),
       (107, "spoon");
       
