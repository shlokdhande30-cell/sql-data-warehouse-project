/*
===============================================================================
Description:
    This script initializes the Data Warehouse environment by creating a new
    database named 'DataWarehouse'. If the database already exists, it is
    safely dropped and recreated to ensure a clean setup.

    After the database is created, three schemas are initialized to support
    a layered data warehouse architecture:

        • bronze - Stores raw data ingested from source systems.
        • silver - Stores cleaned, validated, and transformed data.
        • gold   - Stores business-ready, curated data optimized for reporting
                   and analytics.

Warning:
    Executing this script will permanently delete the existing
    'DataWarehouse' database and all its contents. Ensure that any important
    data is backed up before running this script.
===============================================================================
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
