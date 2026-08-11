# Ecommerce Analytics - SQL & Power BI
An end-to-end e-commerce analytics project using PostgreSQL, SQL and Power BI to transform raw customer and order data into actionable business insights. 

## Project Overview 
This project analyzes e-commerce customer and transaction data to identify revenue drivers, high-value customers, geographic performance, payment preferences and loyalty opportunities.
The project demonstrates an end-to-end analytics workflow, from raw CSV data preparation and SQL analysis to data integration, business insights and interactive Power BI visualization.

## Repository Structure
│
├── data/                              # Raw customer and order datasets
│ ├── customers.csv
│ └── orders.csv
│
├── sql/                               # SQL scripts used throughout
│ ├── 01_data_preparation.sql
│ ├── 02_data_analysis.sql
│ ├── 03_views.sql
│ ├── 04_data_integration.sql
│ ├── 05_business_questions.sql
│ └── 06_advanced_sql.sql
│
├── powerbi/                           # Power BI dashboard
│ └── ecommerce_analytics.pbix
│
├── screenshots/                       # Dashboard images
│ └── dashboard.png
│
├── presentation/                      # Project presentation
│ └── ecommerce_analytics_presentation.pptx
│
└── README.md                          # Project documentation

## Tech Stack
- PostgreSQL - Database management and SQL analysis
- SQL - Data cleaning, transformation, joins, aggregations and analysis
- Power BI - Interactive dashboards and visualization
- DAX - Measures and analytical calculations
- Power Query - Data transformation
- GitHub - Project documentation and version control

## Dataset Description
Customers
1,000 customer records containing customer demographics, signup information, location and loyalty tier.

Orders
5,000 transaction records containing order dates, products, quantities, pricing, discounts, shipping, tax, payment methods and order status.

customers.customer_id -----> orders.customer_id
The two datasets were connected using customner_id.

## SQL Analysis
The project used
- Table creation
- Data validation
- Data cleaning
- Aggregations
- GROUP BY
- ORDER BY
- WHERE
- JOIN
- Views
- Derived columns
- Revenue calculations
- Customer-level analysis
- category analysis
- Window function / advanced SQL

## Power BI Dashboard
![E-commerce Analytics Power BI Dashboard](https://github.com/aishwarya-dharan/Ecommerce-Analytics-SQL-PowerBI/blob/cb9a6b0c00050c697a1b4f78eaf1de4f5dbbf598/Ecommerce%20Power%20BI%20Dashboard%20.png)
The Power BI dashboard provides an interactive view of revenue, orders, customers, product categories, cities, payment methods and loyalty tiers.

## Business Questions
1. Which customers generated the highest revenue?
2. Which product category generates the highest revenue?
3. Which cities generate the most revenue?
4. Which payment methods do customers prefer?
5. Which loyalty tiers generate the most revenue?

## Key Insights
1. High-value customers: The highest-value customer generated Rs 12,83,241 in revenue and belonged to the highest loyalty tier.
2. Geographic performance: Delhi generated approximately Rs 9.5 crore in revenue, followed by Bengaluru at approximately Rs 9.2 crore.
3. Payment behaviour: Card was the most frequently used payment method with approximately 1,700 transactions, followed closely by CPD with 1,677.
4. Loyalty: Bronze customers generated approximately Rs 2.2 crore in revenue, followed by Silver customers at approximately Rs 1.2 crore.

## Recommendations
1. Personalize retention strategies for high value customers.
2. Prioritize high performing cities such as Delhi.
3. Develop campaigns to move Bronze customers into high loyalty tiers.
4. Optimize the card payment experience.
5. use customer segmentation to improve future marketing decisions.

## How to Run the Project
1. Download the GitHub repository.
2. Set up / create a PostgreSQL database.
3. Import and load the datasets customers and orders csv.
4. Run the SQL scripts in sequence.
5. Connect Power BI to the PostgreSQL database. Load the analytics ready view: join_views_ecommerce_data.
6. Open the Power BI file: ecommerce_dashboard 2024 2025.pbix
7. Explore the dashboard. Use the filters/slicers to explore revenue and customer behaviour.

## Future Improvements
1. Add customer segmentation using RFM analysis.
2. Add monthly revenue growth and retention metrics.
3. Incorporate product-level profitability.
4. Add customer churn analysis.
5. Introduce automated data refresh.
6. Add predictive sales forecasting.
7. Incorporate marketing spend data to measure campaign ROI.
8. Expand the dashboard with drill through customer analysis.

## Project Summary 
This project demonstrates and end-to-end data analytics workflow. It also demonstrates how data analysts can translate raw transactional data into insights that support customer retention, revenue growth and operational decision-making.
