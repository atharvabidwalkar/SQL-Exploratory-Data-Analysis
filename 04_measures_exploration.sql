-- Calculate total, average, minimum, and maximum sales amount across all orders
SELECT 
    SUM(sales_amount) AS total_sales,
    AVG(sales_amount) AS avg_sales,
    MIN(sales_amount) AS min_sales,
    MAX(sales_amount) AS max_sales
FROM fact_sales;

-- Find the average, lowest, and highest product prices in the sales data
SELECT 
    AVG(price) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM fact_sales;

-- Find the average, lowest, and highest quantity of products sold per order
SELECT 
    AVG(quantity) AS avg_quantity,
    MIN(quantity) AS min_quantity,
    MAX(quantity) AS max_quantity
FROM fact_sales;