CREATE DATABASE retail_sales_analysis;
USE retail_sales_analysis;
SELECT * FROM orders LIMIT 10;
SHOW DATABASES;
/*=========================================================
Project : Retail Sales Analytics
Author  : Anshika Mishra
Database: retail_sales_analysis
=========================================================*/

USE retail_sales_analysis;
/*=========================================================
Query 1 : Total Number of Orders
=========================================================*/

SELECT COUNT(*) AS Total_Orders
FROM orders;
/*=========================================================
Query 2 : Total Sales
=========================================================*/

SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM orders;
/*=========================================================
Query 3 : Total Profit
=========================================================*/

SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM orders;
/*=========================================================
Query 4 : Average Sales
=========================================================*/

SELECT
ROUND(AVG(Sales),2) AS Average_Sales
FROM orders;
/*=========================================================
Query 5 : Unique Customers
=========================================================*/

SELECT COUNT(DISTINCT `Customer ID`) AS Unique_Customers
FROM orders;
/*=========================================================
Question 6:
Which product category has the highest sales?
=========================================================*
SELECT Category,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;
/*=========================================================
Question 7:
Which product category has the highest profit?
=========================================================*/

SELECT Category,SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;
/*=========================================================
Question 8:
Which region has the highest sales?
=========================================================*/

SELECT Region,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;
/*=========================================================
Question 9:
Which are the Top 10 States by Sales?
=========================================================*/

SELECT State,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
/*=========================================================
Question 10:
Who are the Top 10 Customers by Sales?
=========================================================*/

SELECT `Customer Name`,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
/*=========================================================
Question 11:
Show total sales by Category.
=========================================================*/

SELECT Category,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category;
/*=========================================================
Question 12:
Show total profit by Category.
=========================================================*/

SELECT Category,SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category;
/*=========================================================
Question 13:
Show total sales by Sub-Category.
=========================================================*/

SELECT `Sub-Category`,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Sub-Category`;
/*=========================================================
Question 14:
Show total profit by Sub-Category.
=========================================================*/

SELECT `Sub-Category`,SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Sub-Category`;
/*=========================================================
Question 15:
Show total sales by Region.
=========================================================*/

SELECT Region,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region;
/*=========================================================
Question 16:
Show total profit by Region.
=========================================================*/

SELECT Region,SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region;
/*=========================================================
Question 17:
Show total sales by State.
=========================================================*/

SELECT State,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC;
/*=========================================================
Question 18:
Show total profit by State.
=========================================================*/

SELECT State,SUM(Profit) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit DESC;
/*=========================================================
Question 19:
Show total sales by City.
=========================================================*/

SELECT City,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY City
ORDER BY Total_Sales DESC;
/*=========================================================
Question 20:
Show total profit by City.
=========================================================*/

SELECT City,SUM(Profit) AS Total_Profit
FROM orders
GROUP BY City
ORDER BY Total_Profit DESC;
/*=========================================================
Question 21:
Show all orders where Sales is greater than 500.
=========================================================
SELECT *
FROM orders
WHERE Sales > 500;
/*=========================================================
Question 22:
Show all orders where Profit is greater than 100.
=========================================================*/

SELECT *
FROM orders
WHERE Profit > 100;
/*=========================================================
Question 23:
Show all orders where Discount is 0.
=========================================================*/

SELECT *
FROM orders
WHERE Discount = 0;
/*=========================================================
Question 24:
Show all orders where Quantity is greater than 5.
=========================================================*/

SELECT *
FROM orders
WHERE Quantity > 5;
/*=========================================================
Question 25:
Show all Technology category orders.
=========================================================*/

SELECT *
FROM orders
WHERE Category = 'Technology';
/*=========================================================
Question 26:
Show all Furniture category orders.
=========================================================*/

SELECT *
FROM orders
WHERE Category = 'Furniture';
/*=========================================================
Question 27:
Show all Office Supplies category orders.
=========================================================*/

SELECT *
FROM orders
WHERE Category = 'Office Supplies';
/*=========================================================
Question 28:
Show all orders from California.
=========================================================*/

SELECT *
FROM orders
WHERE State = 'California';
/*=========================================================
Question 29:
Show all orders from New York.
=========================================================*/

SELECT *
FROM orders
WHERE State = 'New York';
/*=========================================================
Question 30:
Show all orders where Sales is between 100 and 500.
=========================================================*/

SELECT *
FROM orders
WHERE Sales BETWEEN 100 AND 500;
/*=========================================================
Question 31:
Show top 5 customers with the highest sales.
=========================================================*/

SELECT `Customer Name`,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 5;
/*=========================================================
Question 32:
Show categories where total sales are greater than 500000.
=========================================================*/

SELECT Category,SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
HAVING SUM(Sales) > 500000;
/*=========================================================
Question 33:
Show products whose name starts with 'A'.
=========================================================*/

SELECT * FROM orders
WHERE `Product Name` LIKE 'A%';
/*=========================================================
Question 34:
Show orders from California and New York.
=========================================================*/

SELECT * FROM orders
WHERE State IN ('California','New York');
/*=========================================================
Question 35:
Show each category and classify it based on sales.
=========================================================*/

SELECT Category,SUM(Sales) AS Total_Sales,
    CASE
        WHEN SUM(Sales) > 700000 THEN 'High Sales'
        WHEN SUM(Sales) > 400000 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Level
FROM orders
GROUP BY Category;