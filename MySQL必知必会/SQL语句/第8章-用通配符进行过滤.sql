USE crashcourse;

-- 8.1-LIKE操作符
  -- 8.1.1-百分号(%)通配符

	-- 找出所有以词jet起头的产品
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'jet%';

	-- 匹配任何位置包含文本anvil的值
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '%anvil%';

	-- 找出以s起头以e结尾的所有产品
SELECT prod_name
FROM products
WHERE prod_name LIKE 's%e';

  -- 8.1.2-下划线(_)通配符
  
	-- 例：
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil';

	-- 换做%的差距
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '% ton anvil';