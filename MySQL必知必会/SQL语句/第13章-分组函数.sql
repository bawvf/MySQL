USE crashcourse;

-- 13.1-数据分组
	-- 返回供应商1003提供的产品数目：
SELECT COUNT(*) AS num_prods
FROM products
WHERE vend_id = 1003;

-- 13.2-创建分组
SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

-- 13.3-过滤分组
SELECT cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >=2;

	-- 具有2个（含）以上、价格为10（含）以上的产品供应商
SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 10
GROUP BY vend_id
HAVING COUNT(*) >= 2;

-- 13.4-分组和排序
	-- 检索总订单价格大于等于50的订单的订单号和总价格
SELECT order_num, SUM(quantity*item_price) AS ordertotal
FROM orderitems
GROUP BY order_num
HAVING SUM(quantity*item_price) >= 50;

SELECT order_num, SUM(quantity*item_price) AS ordertotal
FROM orderitems
GROUP BY order_num
HAVING SUM(quantity*item_price) >= 50
ORDER BY ordertotal;