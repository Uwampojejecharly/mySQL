# Automatic increment:
#definition d'une clee primaire :
ALTER TABLE transactions
AUTO_INCREMENT = 1000;

# Inserted lines:
INSERT INTO transactions (amount)
values(4.99),
      (2.89),
      (3.38),
      (4.99);