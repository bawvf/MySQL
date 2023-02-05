USE crashcourse;

-- 7.1-组合WHERE子句
  -- 7.1.1-AND操作符
  
	-- 检索由供应商1003制造且价格小于等于10美元
SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 1003 AND prod_price <= 10;

  -- 7.1.2-OR操作符

	-- 检索由任一个指定供应商制造的所有产品的产品名和价格
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003;

-- 7.1.3-计算次序

	-- 列出价格为10美元（含）以上且由1002或1003制造的所有产品
		-- 错误示范：
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003 AND prod_price >= 10;

		-- 正确：
SELECT prod_name, prod_price
FROM products
WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price >= 10;

-- 7.2-IN操作符

	-- 检索供应商1002和1003制造的所有产品
SELECT prod_name, prod_price
FROM products
WHERE vend_id IN (1002,1003)
ORDER BY prod_name;

-- 7.3-NOT操作符

	-- 列出除1002和1003之外的所有供应商制造的产品
SELECT prod_name, prod_price
FROM products
WHERE vend_id NOT IN (1002,1003)
ORDER BY prod_name;