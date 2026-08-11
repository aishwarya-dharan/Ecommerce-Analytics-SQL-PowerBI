# Ecommerce Analytics - SQL & Power BI
An end-to-end e-commerce analytics project using PostgreSQL, SQL and Power BI to transform raw customer and order data into actionable business insights. 

## Project Overview 
This project analyzes e-commerce customer and transaction data to identify revenue drivers, high-value customers, geographic performance, payment preferences and loyalty opportunities.
The project demonstrates an end-to-end analytics workflow, from raw CSV data preparation and SQL analysis to data integration, business insights and interactive Power BI visualization.
│
├── data/
│ ├── customers.csv
│ └── orders.csv
│
├── sql/
│ ├── 01_data_preparation.sql
│ ├── 02_data_analysis.sql
│ ├── 03_views.sql
│ ├── 04_data_integration.sql
│ ├── 05_business_questions.sql
│ └── 06_advanced_sql.sql
│
├── powerbi/
│ └── ecommerce_analytics.pbix
│
├── screenshots/
│ └── dashboard.png
│
├── presentation/
│ └── ecommerce_analytics_presentation.pptx
│
└── README.md

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

customers.customer_id -----orders.customer_id
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

