-- 1. Top 5 Spending Customers
SELECT 
    `Customer ID`,
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS Total_Spending
FROM superstore
GROUP BY `Customer ID`, `Customer Name`
ORDER BY Total_Spending DESC
LIMIT 5;

-- Q2: Total Sales by Region.
SELECT 
    `Region`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Region`;

-- Q3. Average Order Size
SELECT 
    ROUND(SUM(Sales) / COUNT(DISTINCT `Order ID`), 2) AS Average_Order_Size
FROM superstore;

-- Q4. Total Sales
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore;

-- Q5. Total Profit
SELECT 
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;

-- Q6. Number of Orders
SELECT 
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;

-- Q7. Sales by Category
SELECT 
    `Category`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Category`;

-- Q8. Profit by Region
SELECT 
    `Region`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Region`;

-- Q9. Top 10 Products by Sales
SELECT 
    `Product ID`,
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY `Product ID`, `Product Name`
ORDER BY Total_Sales DESC 
LIMIT 10;

-- Q10. Customers with Highest Total Profit
SELECT 
    `Customer ID`,
    `Customer Name`,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY `Customer ID`, `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;
