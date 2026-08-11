SELECT COUNT(*)
FROM customers;

SELECT COUNT(*)
FROM orders;

SELECT *
FROM customers
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;

SELECT COUNT(*)
FROM orders O
LEFT JOIN customers c
ON o.customer_id =  c.customer_id
WHERE c.customer_id IS NULL;