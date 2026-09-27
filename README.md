# Customer Order Count Analysis

## 📌 Project Overview

This project analyzes customer order behavior using SQL and Excel-based data analysis.

The main objective is to count the number of orders placed by each customer and identify frequent buyers.

## 🎯 Objectives

- Count unique orders for each customer
- Identify frequent customers
- Avoid duplicate order lines
- Calculate total order amount
- Find top customers based on order count

## 🛠️ Tools Used

- SQL / MySQL
- Microsoft Excel
- GitHub

## 📂 Dataset

The dataset contains customer order information including:

- Order ID
- Customer ID
- Customer Name
- Order Date
- Quantity
- Order Amount

## 📊 Analysis Performed

### 1. Customer Order Count

Orders are grouped by Customer ID and Customer Name to calculate the number of unique orders.

### 2. Frequent Buyers

Customers with multiple orders are identified as frequent buyers.

### 3. Total Order Amount

The total amount spent by each customer is calculated.

### 4. Top Customers

The top 5 customers are identified based on their order count.

## 📁 Project Files

| File | Description |
|---|---|
| `customer_orders.csv` | Original customer order dataset |
| `customer_order_analysis.sql` | SQL queries used for analysis |
| `customer_order_table.csv` | Customer-wise order summary |
| `top_customers.csv` | Top customer analysis |
| `README.md` | Project documentation |

## 🔍 Key SQL Concepts

- GROUP BY
- COUNT()
- COUNT(DISTINCT)
- SUM()
- HAVING
- ORDER BY
- LIMIT

## 💡 Conclusion

The analysis helps identify customers who place orders frequently and provides a simple view of customer purchasing behavior.

This project demonstrates basic SQL data analysis and customer-level aggregation.

## 👨‍💻 Author

**Sahil Kumar**

BCA Student | Aspiring Data Analyst
