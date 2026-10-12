# E-Commerce Database Management & SQL Analysis

## Project Overview

This project focuses on designing and analyzing a relational e-commerce database using **MySQL** and **MySQL Workbench**.

The database represents a small e-commerce business and contains customer information, product details, order records, and order items. SQL queries are used to retrieve, combine, summarize, and analyze data to understand business operations.

This project demonstrates practical SQL skills and relational database concepts relevant to Data Analytics.

## Project Objectives

- Design and manage a relational database.
- Establish relationships between tables using primary and foreign keys.
- Retrieve data from multiple tables using SQL JOINs.
- Analyze customer, product, and order information.
- Apply aggregate functions to summarize data.
- Practice data manipulation and database structure modification.
- Develop a foundation for business-focused SQL analysis.

## Database Schema

The database contains four relational tables.

| Table | Description |
|---|---|
| `customers` | Customer names, email addresses, cities, countries, and registration dates. |
| `products` | Product names, categories, prices, and stock quantities. |
| `orders` | Customer orders, order dates, payment methods, shipping cities, and statuses. |
| `order_items` | Products associated with each order, including quantity and unit price. |

### Table Relationships

- One customer can place multiple orders.
- One order can contain multiple order items.
- One product can appear in multiple order items.

Primary and foreign key constraints maintain relationships and referential integrity between tables.

## Technologies Used

- **MySQL** — Database management and SQL queries
- **MySQL Workbench** — SQL development environment
- **SQL** — Data retrieval, manipulation, and analysis
- **Git & GitHub** — Version control and project portfolio

## SQL Concepts and Skills

### 1. Database Definition Language (DDL)

- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE`
- `DROP TABLE`

### 2. Data Manipulation Language (DML)

- `INSERT INTO`
- `UPDATE`

### 3. Data Retrieval and Filtering

- `SELECT`
- `WHERE`
- `DISTINCT`
- `ORDER BY`

### 4. Aggregate Functions

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

### 5. Grouping and Aggregation

- `GROUP BY`
- Aggregated customer and product summaries
- Product stock analysis

### 6. SQL JOINs

- **INNER JOIN:** Retrieves matching records from related tables.
- **LEFT JOIN:** Returns all records from the left table, including customers without matching orders.
- **RIGHT JOIN:** Returns all records from the right table and matching records from the left table.
- **FULL OUTER JOIN alternative:** Uses `LEFT JOIN`, `RIGHT JOIN`, and `UNION` to combine results in MySQL.
- **CROSS JOIN:** Generates combinations of customers and products.
- **SELF JOIN:** Compares customer records, such as customers located in the same city.

### 7. Relational Database Concepts

- Primary keys and foreign keys
- Auto-incrementing identifiers
- Referential integrity
- `ENUM` data types
- `ON DELETE` and `ON UPDATE` constraints
- Handling unmatched records with `NULL`

## Business Analysis Queries

The project includes SQL queries to explore the following areas:

- Total number of customers, products, orders, and order items.
- Customer distribution by country.
- Average, minimum, and maximum product prices.
- Product stock quantities.
- Customer order history.
- Products associated with individual orders.
- Products sold and their total quantities.
- Customers with and without orders.
- Comparisons between customers in the same city.

Additional analysis can include paid-order revenue, top-selling products, monthly sales trends, and customer purchasing behavior.

## Repository Structure

```text
ecommerce-sql-analysis/
│
├── README.md
├── SQL/
│   └── springs24_combined_mysql_script.sql
├── Analysis/
│   ├── business_queries.sql
│   └── joins_analysis.sql
└── Screenshot/
    ├── Customer_table_screenshot.PNG
    ├── Product_Table_Screenshot.PNG
    └── Show_table.PNG
```

*Note: This structure assumes that the JOIN queries are saved in `Analysis/joins_analysis.sql`. Adjust the file names if your actual repository differs.*

## How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Clone or download this repository.
3. Open the SQL script in MySQL Workbench.
4. Execute the script to create the database, tables, and sample records.
5. Open the analysis SQL files to explore the queries.
6. Execute individual queries and review the returned results.

**Important:** The setup script drops and recreates existing tables with specific names. Run it in a practice environment, as existing data in those tables may be deleted.

## Learning Outcomes

Through this project, I have practiced:

- Designing relational databases.
- Combining data from multiple tables using JOINs.
- Writing aggregate queries for data summarization.
- Understanding relationships between customers, products, and orders.
- Retrieving and interpreting structured business data.
- Organizing SQL scripts for a GitHub portfolio.

## Future Improvements

Planned enhancements include:

- Advanced SQL queries using subqueries and Common Table Expressions (CTEs).
- Window functions and ranking analysis.
- Paid-order revenue and monthly sales analysis.
- Customer segmentation and purchasing behavior.
- Data quality checks and query optimization.
- Additional screenshots showing query results.

## Author

**Sadeeq Khan**

Aspiring Data Analyst | SQL | MySQL | Power BI

GitHub: https://github.com/sadeeqanalyst

## Feedback

Suggestions and constructive feedback are welcome as I continue developing my SQL and Data Analytics skills through hands-on projects.

*This project was developed for learning, practical SQL experience, and portfolio development.*
