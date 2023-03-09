USE crashcourse;

-- 17.2-创建组合查询
	-- 17.2.1-使用UNION
		-- 检索价格不高于5的所有物品
SELECT vend_id, prod_id, prod_price
FROM products
WHERE prod_price <= 5;
		-- 使用in找出供应商1002和1002生产的所有物品
SELECT vend_id, prod_id, prod_price
FROM products
WHERE vend_id IN (1001,1002);

SELECT vend_id, prod_id, prod_price
FROM products
WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id, prod_price
FROM products
WHERE vend_id IN (1001,1002);

	-- 17.2.3-包含或取消重复的行
SELECT vend_id, prod_id, prod_price
FROM products
WHERE prod_price <= 5
UNION ALL
SELECT vend_id, prod_id, prod_price
FROM products
WHERE vend_id IN (1001,1002);

	-- 17.2.4-对组合查询结果排序
SELECT vend_id, prod_id, prod_price
FROM products
WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id, prod_price
FROM products
WHERE vend_id IN (1001,1002)
ORDER BY vend_id, prod_price;