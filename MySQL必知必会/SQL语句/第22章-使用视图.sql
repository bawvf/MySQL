USE crashcourse;

-- 22.1-视图
SELECT cust_name,cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
	AND orderitems.order_num = orders.order_num
	AND prod_id = 'TNT2';
	

-- 22.2-使用视图

	-- 22.2.1-利用视图简化复杂的联结
CREATE VIEW productcustomers AS
SELECT cust_name, cust_contact, prod_id
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num;

SELECT cust_name, cust_contact
FROM productcustomers
WHERE prod_id = 'TNT2';

	-- 22.2.2-用视图重新格式化检索出的数据
CREATE VIEW vendorlocations AS  
SELECT CONCAT(RTRIM(vend_name), '(', RTRIM(vend_country), ')') AS vend_title
FROM vendors
ORDER BY vend_name;

SELECT * FROM vendorlocations;

	-- 22.2.3-用视图过滤不想要的数据
CREATE VIEW customeremaillist AS 
SELECT cust_id, cust_name, cust_email
FROM customers
WHERE cust_email IS NOT NULL;

SELECT * FROM customeremaillist;

	-- 22.2.4-使用视图与计算字段
CREATE VIEW orderitemsexpanded AS
SELECT order_num,
	prod_id,
	quantity,
	item_price,
	quantity*item_price AS expanded_price
FROM orderitems;

SELECT * FROM orderitemsexpanded
WHERE order_num = 20005;