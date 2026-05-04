# sql-bookstore_project
Overview

This project is a beginner-friendly SQL portfolio project that simulates an online bookstore system. It demonstrates database design, relationships, and analytical queries using SQL.

🧱 Database Design

The database consists of the following tables:

authors → stores author details
books → stores book information
customers → stores customer data
orders → stores order records
order_details → stores items in each order
🔗 Entity Relationships
One author can write many books
One customer can place many orders
One order can contain multiple books
🛠️ Technologies Used
SQL (MySQL / PostgreSQL / SQLite compatible)
📂 Project Structure
sql-bookstore-project/
│
├── schema.sql
├── data.sql
├── queries.sql
└── README.md
🚀 How to Run
1. Create Database
CREATE DATABASE bookstore;
USE bookstore;
2. Run Schema

Execute:

schema.sql
3. Insert Data

Execute:

data.sql
4. Run Queries

Execute:

queries.sql
🔍 Key SQL Concepts Demonstrated
Joins (INNER JOIN)
Aggregations (SUM, COUNT)
GROUP BY
Foreign Keys
Subqueries
Indexing
📊 Example Insights
Total sales per book
Top spending customers
Most popular authors


📜 License

This project is open-source and free to use.
