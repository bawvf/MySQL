USE crashcourse;

-- 12.1-聚集函数
  -- 12.1.1-AVG()函数
	-- 返回products表中所有产品的平均价格
SELECT AVG(prod_price) AS avg_price
FROM products;

	-- 返回特定供应商所提供产品的平均价格
SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

  -- 12.1.2-COUNT()函数
	-- 返回customers表中客户的总数
SELECT COUNT(*) AS num_cust
FROM customers;

	-- 只对具有电子邮件地址的客户计数
SELECT COUNT(cust_email) AS num_cust
FROM customers;

  -- 12.1.3-MAX()函数
	-- 返回products表中最贵的物品的价格
SELECT MAX(prod_price) AS max_price
FROM products;

  -- 12.1.4-MIN()函数
	-- 返回products表中最便宜的物品的价格
SELECT MIN(prod_price) AS min_price
FROM products;

  -- 12.1.5-SUM()函数
	-- 检索所订购物品的总数(所有quantity值之和)
SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

	-- 合计每项物品的item_price*quantity，得出总的订单金额
SELECT SUM(item_price*quantity) AS total_price
FROM orderitems
WHERE order_num = 20005;

-- 12.2-聚集不同值
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

-- 12.3-组合聚集函数
SELECT COUNT(*) AS sum_items,
	MIN(prod_price) AS price_min,
	MAX(prod_price) AS price_max,
	AVG(prod_price) AS price_avg
FROM products;