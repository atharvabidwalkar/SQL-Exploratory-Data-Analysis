-- Sum the total sales amount for each product category
SELECT p.category, SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_products p ON f.product_key = p.product_key
GROUP BY p.category
ORDER BY total_sales DESC;

-- Sum the total sales amount by the country of the customer
-- Exclude rows where the country is missing or incorrectly formatted
SELECT c.country, SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_customers c ON f.customer_key = c.customer_key
WHERE c.country IS NOT NULL
  AND c.country NOT IN ('n/a', 'N/A')
  AND LENGTH(c.country) > 2 -- Avoid accidental numeric codes or blanks
GROUP BY c.country
ORDER BY total_sales DESC;