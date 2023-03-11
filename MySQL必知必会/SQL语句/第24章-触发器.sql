USE crashcourse;

-- 25.2-创建触发器
CREATE TRIGGER newproduct AFTER INSERT ON products
FOR EACH ROW SELECT 'Product added';

-- 25.3-删除触发器
DROP TRIGGER newproduct;