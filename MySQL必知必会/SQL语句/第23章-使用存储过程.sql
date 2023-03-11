USE crashcourse;

-- 23.3-使用存储过程

	-- 23.3.1-执行存储过程
CALL productpricing(@pricelow,
		@pricehigh,
		@priceaverage);
		
CREATE PROCEDURE productpricing()
BEGIN
	SELECT AVG(prod_price) AS priceaverage
	FROM products;
END;

CALL productpricing();

	-- 23.3.3-删除存储过程
DROP PROCEDURE productpricing;

	-- 23.3.4-使用参数
CREATE PROCEDURE productpricing(
	OUT pl DECIMAL(8,2),
	OUT gh DECIMAL(8,2),
	OUT pa DECIMAL(8,2)
)
BEGIN
	SELECT MIN(prod_price)
	INTO pl
	FROM products;
	SELECT MAX(prod_price)
	INTO ph
	FROM products;
	SELECT AVG(prod_price)
	INTO pa
	FROM products;
END;

CALL productpricing(@pricelow,
		@pricehigh,
		@priceaverage);
		
SELECT @priceaverage;