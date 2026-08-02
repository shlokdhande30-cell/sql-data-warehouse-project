**🏗️ SQL Data Warehouse Project**

**📌 Project Overview : **

This project demonstrates the development of a modern SQL Server Data
Warehouse using an end-to-end ETL workflow, data modeling, and layered
architecture.
The solution integrates raw source data into a structured analytical
model using the Medallion Architecture (Bronze, Silver, and Gold
layers). The project focuses on data ingestion, data cleansing,
transformation, integration, data quality, and business-ready
dimensional modeling.
The final Gold layer provides clean and structured data that can be used
for reporting, analytics, and business intelligence.
---
🎯 Project Objectives

Build a modern data warehouse using SQL Server
Integrate data from multiple source systems
Design a structured ETL pipeline
Apply data cleansing and transformation rules
Implement the Bronze → Silver → Gold architecture
Perform data quality checks at different stages
Create business-ready fact and dimension models
Prepare data for downstream analytics and BI reporting
Demonstrate practical SQL and data warehousing skills
---
🛠️ Technologies Used
---
Technology                          Purpose
---
SQL Server                      Data warehouse database
T-SQL                           ETL, transformation, validation,
and modeling
SQL Server Management Studio      Database development and management
(SSMS)
CSV Files                       Source datasets
Git & GitHub                    Version control and project
documentation
---
🏛️ Data Architecture
The project follows the Medallion Architecture with three layers:
``` text
Source Systems
      │
      ▼
┌─────────────────────┐
│    BRONZE LAYER     │
│     Raw Data        │
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│    SILVER LAYER     │
│ Cleaned & Standard  │
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│     GOLD LAYER      │
│ Business-Ready Data │
└─────────────────────┘
          │
          ▼
   Analytics / BI
```
🥉 Bronze Layer --- Raw Data
The Bronze layer stores data in its original form after ingestion from
source files.
Main responsibilities:
Load raw source data
Preserve the original structure
Provide a historical/raw staging area
Support troubleshooting and reprocessing
The repository includes:
`ddl_bronze.sql` --- creates Bronze layer tables
`proc_load_bronze.sql` --- loads source data into Bronze tables
---
🥈 Silver Layer --- Cleaned & Transformed Data
The Silver layer transforms raw data into standardized, validated, and
analysis-ready datasets.
Transformation activities include:
Removing unwanted spaces
Handling missing or invalid values
Standardizing categorical values
Correcting data types
Removing duplicates
Applying business rules
Validating dates and identifiers
Integrating related source datasets
Performing data quality checks
The repository includes:
`ddl_silver.sql` --- creates Silver layer tables
`proc_load_silver.sql` --- performs transformation and loading
---
🥇 Gold Layer --- Business-Ready Data
The Gold layer represents the final analytical model.
It transforms cleaned Silver data into business-friendly fact and
dimension structures that can be consumed by BI and reporting tools.
The repository includes:
`ddl_gold.sql` --- defines the Gold layer analytical model
Typical Gold entities include:
Customer dimensions
Product dimensions
Sales facts
This structure supports efficient analytical queries and reporting.
---
🔄 ETL Process
The project implements an Extract, Transform, Load (ETL) pipeline.
1️⃣ Extract
Raw datasets are collected from source CSV files.
2️⃣ Load to Bronze
The source data is loaded into Bronze tables with minimal
transformation.
3️⃣ Transform to Silver
Data is cleaned, standardized, validated, and transformed using SQL.
4️⃣ Build Gold Model
Silver data is converted into analytical fact and dimension structures.
5️⃣ Validate
Data quality checks are performed to verify consistency, completeness,
uniqueness, and relationships.
---
📊 Data Modeling
The Gold layer uses a dimensional modeling approach designed for
analytical workloads.
``` text
                  ┌─────────────────┐
                  │  dim_customers  │
                  └────────┬────────┘
                           │
                           ▼
                  ┌─────────────────┐
                  │   fact_sales    │
                  └────────┬────────┘
                           │
                           ▼
                  ┌─────────────────┐
                  │  dim_products   │
                  └─────────────────┘
```
Dimension Tables
Dimension tables contain descriptive business information such as:
Customer details
Product information
Categories and attributes
Fact Table
The fact table stores measurable business events such as:
Sales transactions
Quantities
Prices
Customer references
Product references
Order-related information
---
🧹 Data Quality & Transformation
Several validation and cleansing techniques are applied throughout the
pipeline:
Duplicate detection
NULL value checks
Primary/business key validation
Referential integrity checks
Data type validation
Date consistency checks
Standardization of categorical fields
Removal of unwanted whitespace
Invalid value detection
Source-to-target validation
These checks help ensure that the Gold layer contains reliable data for
analytics.
---
📂 Repository Structure
``` text
sql-data-warehouse-project/
│
├── datasets/
│   └── Source CSV files
│
├── docs/
│   └── Project documentation
│
├── scripts/
│   │
│   ├── bronze/
│   │   ├── ddl_bronze.sql
│   │   └── proc_load_bronze.sql
│   │
│   ├── silver/
│   │   ├── ddl_silver.sql
│   │   └── proc_load_silver.sql
│   │
│   ├── gold/
│   │   └── ddl_gold.sql
│   │
│   └── init_database.sql
│
├── tests/
│   └── Data quality tests
│
├── LICENSE
└── README.md
```
---
🚀 How to Run the Project
Prerequisites
Install:
Microsoft SQL Server
SQL Server Management Studio (SSMS)
Git (optional)
Execution Order
Run the SQL scripts in the following sequence:
``` text
1. scripts/init_database.sql
2. scripts/bronze/ddl_bronze.sql
3. scripts/bronze/proc_load_bronze.sql
4. scripts/silver/ddl_silver.sql
5. scripts/silver/proc_load_silver.sql
6. scripts/gold/ddl_gold.sql
7. Run data-quality validation queries/tests
```
> Update the CSV file paths in the loading scripts according to the
> location of the datasets on your machine.
---
💡 Key Skills Demonstrated
This project demonstrates practical experience with:
SQL
T-SQL
Data Warehousing
ETL Development
Data Cleaning
Data Transformation
Data Integration
Stored Procedures
Data Quality Testing
Dimensional Modeling
Fact & Dimension Tables
Medallion Architecture
SQL Server
SSMS
Git & GitHub
---
📈 Business Value
The completed data warehouse provides a centralized and structured
source of analytical data.
It can help organizations:
Consolidate information from different operational sources
Improve data consistency and quality
Simplify analytical queries
Support KPI and business reporting
Enable Power BI or other BI tools to consume clean datasets
Create a foundation for advanced analytics
---
🔮 Future Enhancements
Potential improvements include:
Build a Power BI dashboard on top of the Gold layer
Add automated ETL scheduling
Implement incremental data loading
Add logging and error-handling tables
Add Slowly Changing Dimensions (SCD)
Implement additional data-quality tests
Move the solution to a cloud data platform
Add CI/CD for database deployments
