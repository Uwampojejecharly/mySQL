# Added not-null constraint:
ALTER TABLE products
MODIFY price DECIMAL(4, 2)NOT NULL;

# Test of the not-null constraint:
INSERT INTO products
values (104, "cookie", 0);
       
