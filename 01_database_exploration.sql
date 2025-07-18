-- Count how many records exist in each of the main tables
SELECT 'dim_customers' AS table_name, COUNT(*) AS record_count FROM dim_customers
UNION
SELECT 'dim_products', COUNT(*) FROM dim_products
UNION
SELECT 'fact_sales', COUNT(*) FROM fact_sales;

-- Show the first 10 rows from the customer table to preview its data
SELECT * FROM dim_customers LIMIT 10;

-- Show the first 10 rows from the product table
SELECT * FROM dim_products LIMIT 10;

-- Show the first 10 rows from the sales table
SELECT * FROM fact_sales LIMIT 10;