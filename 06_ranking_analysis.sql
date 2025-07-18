-- Identify the top 10 customers based on how much they have spent
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(f.sales_amount) AS total_spent
FROM fact_sales f
JOIN dim_customers c ON f.customer_key = c.customer_key
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 10;

-- Identify the top 5 products that generated the most total sales
SELECT 
    p.product_name,
    SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_products p ON f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 5;