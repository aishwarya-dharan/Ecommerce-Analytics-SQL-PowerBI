SELECT COUNT(*) AS total_customers 
FROM customers;

SELECT COUNT(*) AS total_orders 
FROM orders;

SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_ID
HAVING COUNT(*) > 1;

SELECT order_id, COUNT(*)
FROM orders 
GROUP BY order_id 
HAVING COUNT(*) > 1;

SELECT *
FROM customers 
WHERE 
customer_id IS NULL
OR first_name IS NULL
OR age IS NULL;

SELECT *
FROM orders
WHERE 
order_id IS NULL
OR customer_id IS NULL
OR total_amount IS NULL;

SELECT *
FROM orders 
WHERE 
quantity <=0
OR unit_price <0
OR total_amount <0;

SELECT *
FROM orders o 
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL

SELECT
MIN(age),
MAX(age),
AVG(age)
FROM customers;

SELECT
MIN(total_amount),
MAX(total_amount),
AVG(total_amount)
FROM orders;

SELECT

product_category,
COUNT(*)

FROM orders

GROUP BY product_category

ORDER BY COUNT(*) DESC;