--Which customer generates the most revenue--
SELECT
    customer_id,
	first_name,
	last_name,
	SUM(total_amount) AS customer_revenue
FROM ecommerce_data
GROUP BY 
    customer_id,
	first_name,
	last_name
ORDER BY customer_revenue DESC
LIMIT 10;

SELECT *
FROM ecommerce_data
LIMIT 1;

SELECT SUM(total_amount)
FROM ecommerce_data;

--Finding: The highest-value customer generated Rs 13,83,241 in total revenue making them a significant contributer to overall sales. This highlists that a small number of customers can have a substantial impact oon revenue.
--Recommendation: Develop VIP retention strategies for top spending customers through personalized offers, early access to products, exclusive reqards, and proactive customer engagement to maximize customer lifetime value.

SELECT product_category, SUM(total_amount) AS revenue
FROM ecommerce_data
GROUP BY product_category
ORDER BY revenue DESC;

--Finding: Home contributes the most revenue with Rs 15,02,26,716 outperforming Fashion and Electronics.
--Recommendation: Prioritize Home in future promotional campaigns while investigating opportunities to grow lower-performing categories.

SELECT
city,
SUM(total_amount) AS revenue
FROM ecommerce_data
GROUP BY city
ORDER BY revenue DESC;

--Finding: Delhi contributes the most revenue with Rs 9,53,59,408 outperforming other cities. Bengaluru follows close behind with Rs 9,28,56,909 in revenue.
--Recommendation: Prioritize Delhi in future promotional campaigns while increasing promotional activities for Bengaluru. Analyze customer acquisition costs and conversion rates before increasing spend in lower performing cities.

SELECT payment_method, COUNT(*) AS total_orders
FROM ecommerce_data
GROUP BY payment_method 
ORDER BY total_orders DESC

--Finding: Card was the most preferred payment method with 1,700 transactions, followed by Cash On Delivery (COD) with 1,677 transactions. This indicates customers are comfortable with both digital and offline payment methods. 
--Recommendation: Optimize the card payment experience by minimizing checkout friction and maintaining high payment success rates. Continue supporting COD while monitoring its operational costs, return rates, and customer demand before making changes.


SELECT lyalty_tier, SUM(total_amount) AS revenue,
COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_data
GROUP BY lyalty_tier
ORDER BY revenue DESC;

--Finding: Bronze customers generated the highest total revenue at Rs 22,04,05,051 and represented the largest customer segment. Silver followed with 12,84,66,157, indicating that Bronze members are the primary drivers of business revenue.
--Recommendation: Invest in personalized rewards and targeted campaigns that encourage Bronze customers to progress to Silver and Gold tiers. This can increase customer retention, purchase frequency, and overall customer lifetime value.