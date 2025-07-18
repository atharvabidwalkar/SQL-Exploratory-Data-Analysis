-- Find the first and last valid order dates from the sales data.
-- This excludes any NULL or '0000-00-00' style invalid dates.
SELECT 
    MIN(order_date) AS first_order, 
    MAX(order_date) AS last_order
FROM fact_sales
WHERE order_date IS NOT NULL AND YEAR(order_date) > 0;

-- Calculate the average number of days between order date and shipping date,
-- excluding rows with invalid or missing dates.
SELECT 
    AVG(DATEDIFF(shipping_date, order_date)) AS avg_shipping_days
FROM fact_sales
WHERE order_date IS NOT NULL AND shipping_date IS NOT NULL
  AND YEAR(order_date) > 0 AND YEAR(shipping_date) > 0;

-- Count how many orders were placed each year,
-- ignoring records with missing or invalid order dates.
SELECT 
    YEAR(order_date) AS year, 
    COUNT(*) AS order_count
FROM fact_sales
WHERE order_date IS NOT NULL AND YEAR(order_date) > 0
GROUP BY YEAR(order_date)
ORDER BY year;