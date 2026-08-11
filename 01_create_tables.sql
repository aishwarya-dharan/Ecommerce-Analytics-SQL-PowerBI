CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(10),
age INT,
signup_date DATE,
loyalty_tier VARCHAR(20),
city VARCHAR(50),
state VARCHAR(50),
country VARCHAR(50)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
product_category VARCHAR(50),
product_name VARCHAR(100),
quantity INT,
unit_price DECIMAL(10,2),
discount_percent DECIMAL(5,2),
subtotal DECIMAL(10,2),
shipping_cost DECIMAL(10,2),
tax_amount DECIMAL(10,2),
total_amount DECIMAL(10,2),
payment_method VARCHAR(30),
order_status VARCHAR(30),
shipping_method VARCHAR(30)
);

SELECT COUNT(*)FROM orders;


