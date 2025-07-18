# SQL Data Warehouse Analytics Project

This project demonstrates how to build and query a simple data analysis using MySQL. It involves importing CSV files into dimension and fact tables, followed by SQL-based business analysis.

## Project Structure

```
sql-data-warehouse-project/
├── README.md                 # Instructions and overview
├── schema.sql                # Creates tables and loads CSVs
├── analysis_queries.sql      # Sample queries for business insights
├── data/                     # Source CSV files
│   ├── dim_customers.csv
│   ├── dim_products.csv
│   └── fact_sales.csv
```

## How to Run This Project

### 1. Set up MySQL

Make sure you have MySQL installed and `local_infile` enabled.

```sql
SET GLOBAL local_infile = 1;
```

### 2. Clone the Repository

```bash
git clone https://github.com/atharvabidwalkar/SQL-Exploratory-Data-Analysis.git
cd sql-SQL-Exploratory-Data-Analysis
```

### 3. Load the Database and Tables

Open `schema.sql` in MySQL Workbench or run it via terminal:

```bash
mysql -u your_user -p --local-infile=1 < schema.sql
```

This will:
- Create a database `SQL-Exploratory-Data-Analysis`
- Create `dim_customers`, `dim_products`, `fact_sales`
- Load the data from the CSV files

### 4. Run the Analysis Queries

Open and execute sql files to explore:
- Total sales by country or product category
- Customer segments
- Top-selling products
- Sales trends by year

## Notes

If you encounter issues with file paths, update the `LOAD DATA LOCAL INFILE` paths in `schema.sql` to match your local environment.

## Contact

Atharva Bidwalkar  
Email: bidwalkaratharva@gmail.com  
LinkedIn: https://linkedin.com/in/atharva-bidwalkar-23aa15105/
