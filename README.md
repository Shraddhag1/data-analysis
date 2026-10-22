# Olist E-commerce Sales Analysis Using SQL

## Project Overview

This project focuses on analyzing e-commerce data using SQL to understand order trends, sales performance, customer distribution, payment methods, delivery performance, product categories, and seller revenue.

The project uses the **Olist Brazilian E-commerce Dataset** to extract meaningful business insights through SQL queries. It demonstrates practical skills in data analysis, data aggregation, table joins, date functions, and business reporting.

## Tools and Technologies

- **SQL** – Data querying and analysis
- **SQLite** – Database management and query execution
- **Olist E-commerce Dataset** – Data source
- **GitHub** – Project documentation and version control

## Dataset Description

The Olist dataset contains information about orders, customers, products, sellers, payments, reviews, and order items.

The project uses the following tables:

| Table Name | Description |
|---|---|
| `orders` | Order dates, delivery dates, and order statuses |
| `order_items` | Products purchased, prices, freight, and seller information |
| `products` | Product details and category names |
| `order_payments` | Payment methods and payment values |
| `customers` | Customer IDs and geographical information |
| `order_reviews` | Customer ratings and reviews |
| `sellers` | Seller IDs and locations |

## Business Questions and SQL Analysis

### 1. Order Status Analysis
Count the total orders for each order status to understand the distribution of delivered, canceled, and other orders.

### 2. Total Sales and Freight Charges
Calculate total product sales and total freight charges to understand the overall sales value and shipping costs.

### 3. Top 10 Product Categories by Sales
Identify the product categories generating the highest sales revenue.

### 4. Popular Payment Methods
Analyze transaction counts and total payment values for different payment methods.

### 5. Top 10 States by Number of Customers
Determine which Brazilian states have the largest customer bases.

### 6. Average Order Value
Calculate the average total payment per order to understand customer spending patterns.

### 7. Top 10 Products by Revenue
Identify the products generating the highest revenue and count the items sold for each product.

### 8. Delivery Performance Analysis
Classify delivered orders as delivered on time or delivered late, and identify orders that have not been delivered.

### 9. Average Review Score by Product Category
Analyze customer satisfaction by calculating average review scores for product categories with at least 50 reviews.

### 10. Top 10 Sellers by Revenue
Identify the sellers generating the highest revenue and analyze their order volumes.

### 11. Top 10 Sellers by Revenue with Location
Extend the seller analysis by including seller city and state to understand the geographical distribution of top-performing sellers.

### 12. Monthly Order Trends
Group orders by month to identify changes in order volume over time.

## SQL Concepts Used

- `SELECT` and `WHERE`
- `GROUP BY` and `ORDER BY`
- Aggregate functions: `COUNT()`, `SUM()`, and `AVG()`
- `ROUND()` for numerical formatting
- `JOIN` operations
- Subqueries
- `CASE` statements
- `HAVING` clause
- `COUNT(DISTINCT ...)`
- Date formatting and monthly aggregation
- `LIMIT` for top-performing records

## Key Insights

The SQL queries are designed to help answer questions such as:

- Which product categories contribute the most to sales?
- Which payment methods are used most frequently?
- Which states have the most customers?
- Which products and sellers generate the highest revenue?
- Are most orders delivered on time?
- Which product categories receive better customer ratings?
- How does order volume change from month to month?



## Project Structure

```text
olist-ecommerce-sql-analysis/
│
├── README.md
├── dataset/
│   └── Olist CSV files
│
└── sql/
    └── olist_analysis.sql
```

The folder structure is a suggested organization. Adjust the file and folder names to match your actual GitHub repository.

## How to Run the Project

1. Download the Olist Brazilian E-commerce Dataset.
2. Import the CSV files into MySQL Workbench or SQLite.
3. Verify that the required tables and column names match the SQL queries.
4. Save the analysis queries in `olist_analysis.sql`.
5. Execute each query against the database.
6. Review the results and document important business findings.
7. Upload the SQL file and this README to GitHub.

## Skills Demonstrated

- Data analysis using SQL
- Relational database querying
- Data aggregation and summarization
- Business performance analysis
- Customer and seller analysis
- Sales and revenue analysis
- Delivery and customer satisfaction analysis
- Analytical problem-solving

## Conclusion

This project demonstrates how SQL can be used to transform raw e-commerce data into meaningful business information. By analyzing sales, customers, products, payments, reviews, sellers, and delivery performance, the project provides a foundation for data-driven business decisions.


