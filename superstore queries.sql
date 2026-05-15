-- Query 1: Total Sales

SELECT ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales;




-- Query 2: Category Wise Sales

SELECT Category, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;




-- Query 3: Top 5 States

SELECT State, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;




-- Query 4: Region Wise Sales

SELECT Region, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;




-- Query 5: Ship Mode Analysis

SELECT "Ship Mode", 
       COUNT(*) AS Total_Orders,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Sales DESC;