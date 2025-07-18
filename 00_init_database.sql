CREATE DATABASE DataWarehouseAnalytics;
USE DataWarehouseAnalytics;

-- Create 'gold' schema (in MySQL, schema = database, so we can just use table prefixes if needed)

-- Create Tables
CREATE TABLE dim_customers (
    customer_key INT,
    customer_id INT,
    customer_number VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    marital_status VARCHAR(50),
    gender VARCHAR(50),
    birthdate DATE,
    create_date DATE
);

CREATE TABLE dim_products (
    product_key INT,
    product_id INT,
    product_number VARCHAR(50),
    product_name VARCHAR(50),
    category_id VARCHAR(50),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    maintenance VARCHAR(50),
    cost INT,
    product_line VARCHAR(50),
    start_date DATE
);

CREATE TABLE fact_sales (
    order_number VARCHAR(50),
    product_key INT,
    customer_key INT,
    order_date DATE,
    shipping_date DATE,
    due_date DATE,
    sales_amount INT,
    quantity TINYINT,
    price INT
);

-- Load data from CSV files (make sure LOCAL is enabled in your MySQL server)
-- You must enable "LOCAL INFILE" in both MySQL server and MySQL Workbench

-- Load dim_customers
LOAD DATA LOCAL INFILE '/Users/atharvabidwalkar/Downloads/sql-data-analytics-project/datasets/csv-files/gold.dim_customers.csv'
INTO TABLE dim_customers
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Load dim_products
LOAD DATA LOCAL INFILE '/Users/atharvabidwalkar/Downloads/sql-data-analytics-project/datasets/csv-files/gold.dim_products.csv'
INTO TABLE dim_products
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Load fact_sales
LOAD DATA LOCAL INFILE '/Users/atharvabidwalkar/Downloads/sql-data-analytics-project/datasets/csv-files/gold.fact_sales.csv'
INTO TABLE fact_sales
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'local_infile';

SHOW DATABASES;
USE DataWarehouseAnalytics;
SHOW TABLES;

SELECT * FROM dim_customers LIMIT 200;
