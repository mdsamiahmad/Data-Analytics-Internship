CREATE DATABASE retail_db;
USE retail_db;
CREATE TABLE retail_sales (
    Invoice_ID INT,
    Invoice_Date DATETIME,
    City VARCHAR(50),
    Store_Format VARCHAR(50),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Channel VARCHAR(50),
    Payment_Mode VARCHAR(50),
    Units INT,
    Cost_Price DECIMAL(10,2),
    Selling_Price DECIMAL(10,2),
    Revenue DECIMAL(12,2),
    Cost DECIMAL(12,2),
    Margin DECIMAL(12,2),
    Margin_Percent DECIMAL(10,2),
    Stock_On_Hand INT,
    Reorder_Level INT,
    Lead_Time_Days INT,
    Customer_Age DECIMAL(5,2),
    Customer_Gender VARCHAR(20),
    Loyalty_Flag INT
);
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
describe retail_sales;
LOAD DATA LOCAL INFILE 'C:/Intern project/task 4/cleaned_retail_data.csv'
INTO TABLE retail_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select count(*) from retail_sales;
SELECT *
FROM retail_sales
LIMIT 5;

-- Total Revenue
SELECT 
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales;

-- Total Cost and Total Margin
SELECT
    ROUND(SUM(Cost), 2) AS Total_Cost,
    ROUND(SUM(Margin), 2) AS Total_Margin
FROM retail_sales;

-- Revenue by Category
SELECT
    Category,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Category
ORDER BY Total_Revenue DESC;
	
-- Revenue by City
SELECT
    City,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY City
ORDER BY Total_Revenue DESC;

-- Revenue by Sales Channel
SELECT
    Channel,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Channel
ORDER BY Total_Revenue DESC;

-- Revenue by Brand
SELECT
    Brand,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Brand
ORDER BY Total_Revenue DESC;

-- Average Revenue per Invoice
SELECT
    ROUND(SUM(Revenue) / COUNT(DISTINCT Invoice_ID), 2) AS Average_Order_Value
FROM retail_sales;

-- Revenue by Payment Mode
SELECT
    Payment_Mode,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Payment_Mode
ORDER BY Total_Revenue DESC;

-- Revenue by Store Format
SELECT
    Store_Format,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Store_Format
ORDER BY Total_Revenue DESC;

-- Monthly Revenue Trend
SELECT
    DATE_FORMAT(Invoice_Date, '%Y-%m') AS Month,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY DATE_FORMAT(Invoice_Date, '%Y-%m')
ORDER BY Month;

-- Revenue by Category and Channel
SELECT
    Category,
    Channel,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM retail_sales
GROUP BY Category, Channel
ORDER BY Category, Total_Revenue DESC;

