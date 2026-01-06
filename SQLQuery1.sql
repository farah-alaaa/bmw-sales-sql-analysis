USE [NTI-];

-- 1. Select all
SELECT * FROM [BMW_sales_data];

-- 2. Top 10 records
SELECT TOP 10 * FROM [BMW_sales_data];

-- 3. Distinct models
SELECT DISTINCT [Model] FROM [BMW_sales_data];

-- 4. Total records
SELECT COUNT(*) AS total_records FROM [BMW_sales_data];

-- 5. Total sales by model
SELECT [Model], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Model]
ORDER BY Total_Sales DESC;

-- 6. Top 5 selling models
SELECT TOP 5 [Model], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Model]
ORDER BY Total_Sales DESC;

-- 7. Average sales per model
SELECT [Model], AVG([Sales_Volume]) AS Avg_Sales
FROM [BMW_sales_data]
GROUP BY [Model]
ORDER BY Avg_Sales DESC;

-- 8. Max and min sales per model
SELECT [Model], MAX([Sales_Volume]) AS Max_Sales, MIN([Sales_Volume]) AS Min_Sales
FROM [BMW_sales_data]
GROUP BY [Model];

-- 9. Yearly total sales
SELECT [Year], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Year]
ORDER BY [Year];

-- 10. Compare sales for X5
SELECT [Year], [Model], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
WHERE [Model] = 'X5'
GROUP BY [Year], [Model]
ORDER BY [Year];

-- 11. Year with highest sales
SELECT TOP 1 [Year], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Year]
ORDER BY Total_Sales DESC;

-- 12. Total sales by region
SELECT [Region], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Region]
ORDER BY Total_Sales DESC;

-- 13. Average sales per region
SELECT [Region], AVG([Sales_Volume]) AS Avg_Sales
FROM [BMW_sales_data]
GROUP BY [Region]
ORDER BY Avg_Sales DESC;

-- 14. Highest selling model per region
SELECT [Region], [Model], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Region], [Model]
ORDER BY [Region], Total_Sales DESC;

-- 15. Total sales per year per region
SELECT [Year], [Region], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Year], [Region]
ORDER BY [Year], Total_Sales DESC;

-- 16. Best-selling model each year
SELECT [Year], [Model], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Year], [Model]
ORDER BY [Year], Total_Sales DESC;

-- 17. Models with total sales above 10,000
SELECT [Model], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
GROUP BY [Model]
HAVING SUM([Sales_Volume]) > 10000
ORDER BY Total_Sales DESC;

-- 18. Percentage contribution of each model
SELECT 
    [Model],
    SUM([Sales_Volume]) AS Total_Sales,
    (SUM([Sales_Volume]) * 100.0 / (SELECT SUM([Sales_Volume]) FROM [BMW_sales_data])) AS Percentage_Contribution
FROM [BMW_sales_data]
GROUP BY [Model]
ORDER BY Percentage_Contribution DESC;

-- 19. Sales trend for model X3
SELECT [Year], SUM([Sales_Volume]) AS Total_Sales
FROM [BMW_sales_data]
WHERE [Model] = 'X3'
GROUP BY [Year]
ORDER BY [Year];

-- 20. Region with highest average yearly sales
SELECT TOP 1 [Region], AVG([Sales_Volume]) AS Avg_Yearly_Sales
FROM [BMW_sales_data]
GROUP BY [Region]
ORDER BY Avg_Yearly_Sales DESC;
