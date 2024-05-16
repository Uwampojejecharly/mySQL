# Creation of the table test:
CREATE TABLE test(
	my_date DATE,
    my_time TIME,
    ny_datetime DATETIME
); 

# Current date:
INSERT INTO test
VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW());