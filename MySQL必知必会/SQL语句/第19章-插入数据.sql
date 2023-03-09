USE crashcourse;

-- 19.2-插入完整的行
INSERT INTO customers(cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country,
	cust_contact,
	cust_email)
VALUES('Pep E. LaPew',
	'100 Main Street',
	'Los Angeles',
	'CA',
	'90046',
	'USA',
	NULL,
	NULL);
	
INSERT INTO custmers(cust_name,
	cust_contact,
	cust_email,
	cuat_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country)
VALUES('Pep E. LaPew',
	NULL,
	NULL,
	'100 Main Street',
	'CA'
	'90046',
	'USA');

	-- 19.3-插入多个行
INSERT INTO customers(cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country)
VALUES('Pep E. LaPew',
	'100 Main Street',
	'Los Angeles',
	'CA',
	'90046',
	'USA');
INSERT INTO customers(cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country)
VALUES('M. Martian',
	'42 Galaxy Way',
	'New York',
	'NY',
	'11213',
	'USA');
	
INSERT INTO customers(cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country)
VALUES(
	'Pep E. LaPew',
	'100 Main Street',
	'Los Angeles',
	'CA',
	'90046',
	'USA'
	),
	(
	'M. Martian',
	'42 Galaxy Way',
	'New York',
	'NY',
	'11213',
	'USA'
	);
	
-- 19.4-插入检索出的数据
INSERT INTO customers(cust_id,
	cust_contact,
	cust_email,
	cust_name,
	cust_adress,
	cust_city,
	cust_state,
	cust_zip,
	cust_country)
SELECT cust_id,
	cust_contact,
	cust_email,
	cust_name,
	cust_adress,
	cust_city,
	cust_state,
	cust_zip,
	cust_country
FROM custnew;