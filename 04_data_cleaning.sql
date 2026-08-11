SELECT * 
FROM customers
LIMIT 10;

CREATE OR REPLACE VIEW clean_customers AS
SELECT 
     customer_id,
	 TRIM(first_name) AS first_name,
	 TRIM(last_name) AS last_name,
	 gender,
	 age,
	 signup_date,
	 lyalty_tier,
	 TRIM(city) AS city,
	 TRIM(state) AS state,
	 country
FROM customers;

SELECT *
FROM clean_customers
LIMIT 10;

CREATE OR REPLACE VIEW clean_orders AS
SELECT
    order_id,
	customer_id,
	order_date,
	TRIM(product_category) AS product_category,
	TRIM(product_name) AS product_name,
	quantity,
	unit_price,
	COALESCE(discount_percent,0) AS
	discount_percent,
	 subtotal,
	 shipping_cost,
	 tax_amount,
	 payment_method,
	 order_status,
	 shipping_method
FROM orders;

SELECT *
FROM clean_orders
LIMIT 10;

SELECT COUNT(*)
FROM clean_customers;

SELECT COUNT(*)
FROM orders;