CREATE OR REPLACE VIEW ecommerce_data AS
SELECT
o.order_id,
o.order_date,

c.customer_id,
c.first_name,
c.last_name,
c.gender,
c.age,
c.lyalty_tier,
c.city,
c.state,
c.country,


o.product_category,
o.product_name,
o.quantity,
o.unit_price,
o.discount_percent,
o.subtotal,
o.shipping_cost,
o.tax_amount,
(o.subtotal + o.shipping_cost + o.tax_amount) AS total_amount,
o.payment_method,
o.order_status,
o.shipping_method

FROM clean_orders o

INNER JOIN clean_customers c

ON o.customer_id = c.customer_id;

SELECT *
FROM ecommerce_data
LIMIT 10;

SELECT COUNT(*)
FROM ecommerce_data;

SELECT *
FROM ecommerce_data
LIMIT 1;

SELECT
subtotal,
shipping_cost,
tax_amount,
total_amount

FROM ecommerce_data;

DROP VIEW ecommerce_data;

CREATE OR REPLACE VIEW ecommerce_data AS
SELECT
o.order_id,
o.order_date,

c.customer_id,
c.first_name,
c.last_name,
c.gender,
c.age,
c.lyalty_tier,
c.city,
c.state,
c.country,


o.product_category,
o.product_name,
o.quantity,
o.unit_price,
o.discount_percent,
o.subtotal,
o.shipping_cost,
o.tax_amount,
(o.subtotal + o.shipping_cost + o.tax_amount) AS total_amount,
o.payment_method,
o.order_status,
o.shipping_method

FROM clean_orders o

INNER JOIN clean_customers c

ON o.customer_id = c.customer_id;

SELECT
subtotal,
shipping_cost,
tax_amount,
total_amount
FROM ecommerce_data
LIMIT 10;
