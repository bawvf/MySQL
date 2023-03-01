USE crashcourse;

-- 15.1-联结
	-- 15.1.1-关系表
	
	-- 15.1.2-为什么要使用联结

-- 15.2-创建联结
SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id
ORDER BY vend_name, prod_name;

-- 15.2.1-WHERE子句的重要性
SELECT vend_name, prod_name, prod_price
FROM vendors, products
ORDER BY vend_name, prod_name;

-- 15.2.2-内部联结
SELECT vend_name, prod_name, prod_price
FROM vendors INNER JOIN products
ON vendors.vend_id = products.vend_id;

-- 15.2.3-联结多个表
	-- 显示编号为20005的订单中的物品
SELECT prod_name, vend_name, prod_price, quantity
FROM orderitems, products, vendors
WHERE products.vend_id = vendors.vend_id
AND orderitems.prod_id = products.prod_id
AND order_num = 20005;

	-- 返回订购产品TNT2的客户列表
SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (SELECT cust_id
		FROM orders
		WHERE order_num IN (SELECT order_num
				FROM orderitems
				WHERE prod_id = 'TNT2'));
				
SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num
AND prod_id = 'TNT2';