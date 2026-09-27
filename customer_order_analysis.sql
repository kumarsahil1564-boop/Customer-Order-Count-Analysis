-- Customer Order Count Analysis
-- Task 20: Count orders per customer and identify frequent buyers

CREATE DATABASE IF NOT EXISTS customer_order_analysis;
USE customer_order_analysis;

-- Create orders table
CREATE TABLE customer_orders (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Order_Date DATE,
    Quantity INT,
    Order_Amount DECIMAL(10,2)
);

-- Import the customer_orders.csv file before running the analysis queries.

-- 1. View all orders
SELECT * FROM customer_orders;

-- 2. Count unique orders for each customer
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM customer_orders
GROUP BY Customer_ID, Customer_Name
ORDER BY Order_Count DESC;

-- 3. Identify frequent buyers (3 or more orders)
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM customer_orders
GROUP BY Customer_ID, Customer_Name
HAVING COUNT(DISTINCT Order_ID) >= 3
ORDER BY Order_Count DESC;

-- 4. Customer-wise total order amount
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count,
    SUM(Order_Amount) AS Total_Order_Amount
FROM customer_orders
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Order_Amount DESC;

-- 5. Top 5 customers by order count
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM customer_orders
GROUP BY Customer_ID, Customer_Name
ORDER BY Order_Count DESC
LIMIT 5;
