USE crashcourse;

-- 6.1-使用WHERE子句
SELECT prod_name, prod_price
FROM products
WHERE prod_price = 2.50;

-- 6.2-WHERE子句操作符
  -- 6.2.1-检查单个值
SELECT prod_name, prod_price
FROM products
WHERE prod_name = 'fuses';

	-- 列出价格小于10美元的所有产品
SELECT prod_name, prod_PRICE
FROM products
WHERE prod_price < 10;

	-- 检索价格小于等于10美元的所有产品
SELECT prod_name, prod_price
FROM products
WHERE prod_price <= 10;

  -- 6.2.2-不匹配检查
	-- 不是由供应商1003制造的所有产品
SELECT vend_id, prod_name
FROM products
WHERE vend_id <> 1003;

SELECT vend_id, prod_name
FROM products
WHERE vend_id != 1003;

  -- 6.2.3-范围值检查
	-- 检索价格在5美元和10美元之间的所有产品
SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10
ORDER BY prod_price

  -- 6.2.4-空值检查
	-- 返回没有价格的所有产品名
SELECT prod_name
FROM products
WHERE prod_price IS NULL;

		-- 没有某位顾客的电子邮件地址
	SELECT cust_id
	FROM customers
	WHERE cust_email IS NULL