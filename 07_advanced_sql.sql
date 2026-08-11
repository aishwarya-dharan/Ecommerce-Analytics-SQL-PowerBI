--Who are the top 10 customers?

SELECT
     customer_id,
	 first_name,
	 last_name,
	 SUM(total_amount) AS revenue,
	 RANK() OVER (
            ORDER BY SUM(total_amount) DESC
		) AS revenue_rank
FROM ecommerce_data
GROUP BY 
     customer_id,
	 first_name,
	 last_name
LIMIT 10
	 ;

--Compare ranking Methods
SELECT
     customer_id,
	 first_name,
	 last_name,
	 SUM(total_amount) AS revenue,
	 
	 RANK() OVER (
            ORDER BY SUM(total_amount) DESC
		) rank,
		
	 DENSE_RANK() OVER (
            ORDER BY SUM(total_amount) DESC
		) dense_rank,
		
	 ROW_NUMBER() OVER (
            ORDER BY SUM(total_amount) DESC
		) row_number
FROM ecommerce_data
GROUP BY 
     customer_id,
	 first_name,
	 last_name
LIMIT 10
	 ;

--Monthly Revenue Trend
SELECT
DATE_TRUNC('month', order_date) AS month,
SUM(total_amount) AS revenue
FROM ecommerce_data
GROUP BY
DATE_TRUNC('month', order_date)
ORDER BY month ASC;
--January generated the most amount of revenue while December generated the least amount.

--Best Selling Products
SELECT
product_name,
SUM(quantity) units_sold,
SUM(total_amount) revenue
FROM ecommerce_data
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;
--Mixer was the best selling product with 2701 units sold, followed closely by Shoes with 2617 units sold. This indicates customers are comfortable with both mixer and shoe purchases.

--Average Order Value (AOV)
--How much does the average customer spend per order?
SELECT
ROUND(AVG(total_amount),2) AS average_order_value
FROM ecommerce_data;
--The AOV is Rs 87,814.18.

--Revenue by MONTH and CATEGORY.
SELECT 
DATE_TRUNC('month', order_date)months, product_category, SUM(total_amount) revenue
FROM ecommerce_data
GROUP BY 
months,
product_category
ORDER BY
months, revenue DESC;
--January generated the most amount of revenue with Rs 81,81,806 in the product category, Electronics.

--CTE
WITH monthly_sales AS (
SELECT 
DATE_TRUNC('month', order_date) months,
SUM(total_amount) revenue
FROM ecommerce_data
GROUP BY months
)
SELECT *
FROM monthly_sales
ORDER BY months
;