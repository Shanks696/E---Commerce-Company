1️⃣ Project Objective

The objective of this case study is to perform structured data analysis on an E-Commerce transactional database using SQL to extract actionable business insights.

This project focuses on:

• Understanding customer purchasing behavior

• Identifying revenue growth trends

• Analyzing product performance

• Measuring customer acquisition and retention patterns

• Supporting data-driven business decision making

• The analysis is designed from a business-first perspective, translating real-world business questions into optimized SQL queries.

2️⃣ Dataset Overview

The database consists of four relational tables:

🗂 Customers

• Contains customer demographic and location data.

🗂 Orders

• Stores order level transactional details including order date and total amount.

🗂 OrdersDetail

• Captures product level order breakdown including quantity and price per unit.

🗂 Products

• Includes product metadata such as product name and category.

🔗 Data Relationships

One Customer → Many Orders

One Order → Many Order Details

One Product → Many Order Details

This relational structure enables mult-dimensional analysis across customers, products, and time.

3️⃣ Data Cleaning & Preparation

To ensure consistency in time based analysis, data standardization was performed:

:- Converted Order_date column to DATE format.

:- Validated schema structure using DESCRIBE.

:- Ensured compatibility for window function calculations.

This step ensured accurate month on month trend computations and aggregation reliability.

4️⃣ Analytical Approach

The project follows a structured analytical workflow:

:- Data Exploration

:- Data Cleaning

:- Customer Analysis

:- Product Performance Analysis

:- Revenue & Growth Trend Analysis

:- Business Insight Extraction

Advanced SQL techniques used:

:- CTEs (Common Table Expressions)

:- Window Functions (LAG)

:- Aggregate Functions (SUM, AVG, COUNT)

:- Date Formatting

:- Multi table Joins

:- Revenue Computation Logic

5️⃣ Key Business Analyses Performed
📍 Market Identification

:- Top 3 cities with the highest customer concentration

:- Supports logistics optimization and targeted marketing

👥 Customer Segmentation

:- Distribution of customers by order frequency

:- Identifies one-time, occasional, and repeat buyers

💎 Premium Product Detection

:- Products with average quantity = 2 and high revenue

:- Indicates high value product trends

🛍 Category Reach Analysis

:- Unique customer count per product category

:- Measures category popularity and customer penetration

📈 Month-on-Month Sales Growth

:- Percentage change in total sales using LAG

:- Identifies growth patterns and seasonality

💰 Average Order Value Trends

:- Tracks monthly change in average order value

:- Evaluates pricing and promotion effectiveness

🔄 Product Turnover Rate

:- Identifies top 5 fastest moving products

:- Assists in inventory planning and restocking strategy

⚠ Low Penetration Products

:- Products purchased by less than 40% of customers

:- Highlights potential inventory inefficiencies

🏆 Peak Revenue Months

:- Identifies highest performing months

:- Supports forecasting and operational planning

🚀 Customer Acquisition Trend

:- Tracks new customers by first purchase month

:- Evaluates marketing effectiveness

6️⃣ Key Insights Derived

:- Certain cities represent concentrated revenue opportunities.

:- A small segment of repeat customers contributes significantly to order volume.

:- High revenue products do not necessarily require high purchase quantities.

:- Sales show measurable month on month fluctuations, indicating seasonality.

:- Customer acquisition trends reveal business growth trajectory.

7️⃣ Business Impact

:- This case study demonstrates how structured SQL analysis can:

:- Improve marketing targeting

:- Optimize inventory management

:- Enhance revenue forecasting

:- Support strategic decision making

:- Identify growth opportunities

8️⃣ Technical Skills Demonstrated

✔ Advanced SQL Query Writing
✔ Business-Oriented Problem Solving
✔ Data Cleaning & Transformation
✔ Window Functions & CTEs
✔ Revenue Analytics
✔ Customer Behavior Analysis
✔ Trend & Growth Analysis

9️⃣ Author

Shashank Sharma
Aspiring Data Analyst
SQL | Python | Power BI | Business Analytics
