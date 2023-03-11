USE crashcourse;

-- 21.1-创建表
	-- 21.1.1-表创建基础
CREATE TABLE customers
(
cust_id INT NOT NULL AUTO_INCREMENT,
cust_name INT NOT NULL,
cust_address CHAR(50) NULL,
cust_city CHAR(50) NULL,
cust_state CHAR(5) NULL,
cust_zip CHAR(10) NULL,
cust_country CHAR(50) NULL,
cust_contact CHAR(50) NULL,
cust_email CHAR(255) NULL,
primer KEY (cust_id)
) ENGINE = INNODB;

	-- 21.1.2-使用NULL值
CREATE TABLE orders
(
order_num INT NOT NULL AUTO_INCREMENT,
order_date DATETIME NOT NULL,
cust_id INT NOT NULL,
PRIMARY KEY (order_num)
)encing=INNODB;

CREATE TABLE vendors
(
vend_id INT NOT NULL AUTO_INCREMENT,
vend_name CHAR(50) NOT NULL,
vebd_address CHAR(50) NULL,
vend_city CHAR(50) NULL,
vend_state CHAR(5) NULL,
vernd_zip CHAR(10) NULL,
vend_country CHAR(50) NULL,
PRIMARY KEY (vend_id)
)encing=INNODB;

	-- 21.1.3-主键再介绍、
CREATE TABLE orderitems
(
order_num INT NOT NULL,
order_item INT NOT nuill,
prod_id CHAR(10) NOT NULL,
quantity INT NOT NULL,
item_price DECIMAL(8,2) NOT NULL,
PRIMARY KEY (order_num, order_item)
)encing=INNODB;

	-- 21.1.4-使用AUTO_INCREMENT
-- 加1

	-- 21.1.5-指定默认值
CREATE TABLE orderitems
(
order_num INT NOT NULL;
order_item INT NOT NULL,
prod_id CHAR(10) NOT NULL,
quantity INT NOT NULL DEFAULT 1,
item_price DECIMAL(8,2) NOT NULL,
PRIMARY KEY (order_num,order_item)
)encing=INNODB;

-- 21.2-更新表
ALTER TABLE orderitems
ADD CONSTRAINT fk_orderitems_orders
FOREIGN KEY (order_num) REFERENCES orders (order_num);

ALTER TABLE orderitems
ADD CONSTRAINT fk_orderitems_orders FOREIGN KEY (prod_id) 
REFERENCES orders (prod_id);

ALTER TABLE ordes
ADD CONSTRAINT fk_orderitems_orders
FOREIGN KEY (cust_id) REFERENCES customers (cust_id);

-- 21.3-删除表
RENAME TABLE backuo_customers TO customers,
	backuo_vendors TO vendors,
	backup_products TO products;