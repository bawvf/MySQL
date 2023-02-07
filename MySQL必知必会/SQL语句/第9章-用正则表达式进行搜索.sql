USE crashcourse;

-- 9.2-使用MySQL正则表达式
  -- 9.2.1-基本字符匹配
  
	-- 检索列prod_name包含文本1000的所有行
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '.000'
ORDER BY prod_name;

  -- 9.2.2-进行OR匹配
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000'
ORDER BY prod_name;

  -- 9.2.3-匹配几个字符之一
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[123] Ton'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '1|2|3 Ton'
ORDER BY prod_name;

  -- 9.2.4-匹配范围
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[1-5] Ton'
ORDER BY prod_name;

  -- 9.2.5-匹配特殊字符
	-- 找出包含.字符的值
		-- 错误示范
SELECT vend_name
FROM vendors
WHERE vend_name REGEXP '.'
ORDER BY vend_name;

		-- 正确示范
SELECT vend_name
FROM vendors
WHERE vend_name REGEXP '\\.'
ORDER BY vend_name;

  -- 9.2.6-匹配字符类

  -- 9.2.7-匹配多个实例
SELECT prod_name
FROM products
WHERE prod_name REGEXP '\\([0-9] sticks?\\)'
ORDER BY prod_name;

  -- 9.2.8-定位符看
	-- 找出以一个数(包括以小数开始的数)开始的所有产品
SELECT prod_name
FROM products
WHERE prod_name REGEXP '^[0-9\\.]'
ORDER BY prod_name;