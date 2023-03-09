USE crashcourse;

-- 20.1-更新数据
UPDATE customers
SET cust_email = 'elmer@fudd.com'
WHERE cust_id = 10005;

UPDATE customers
SET cust_name = 'The Fudds',
	cust_email = 'elmer@fudd.com'
WHERE cust_id = 10005;

	-- 用来去除cust_email列中的值
UPDATE customers
SET cust_email = NULL
WHERE cust_id = 10005;

-- 20.2-删除数据
DELETE FROM customers
WHERE cust_id = 10006;