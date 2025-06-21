/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/


SELECT'=============================================================';
SELECT'Loading Bronze Layer';
SELECT'=============================================================';
SELECT'-------------------------------------------------------------';
SELECT'Loading CRM Table';
SELECT'-------------------------------------------------------------';

-- PRINT '>> Truncating Table: bronze.crm_cust_info';
TRUNCATE TABLE bronze.crm_cust_info;

-- PRINT '>> Inserting Data Into: bronze.crm_cust_info';
LOAD DATA LOCAL INFILE 'C:/Users/bhushan.n/Desktop/study/SQL_DATA_WAREHOUSE_PROJECT/datasets/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT * FROM bronze.crm_cust_info;
SELECT COUNT(*) FROM bronze.crm_cust_info;

-- PRINT '>> Truncating Table: bronze.crm_prd_info';
TRUNCATE TABLE bronze.crm_prd_info;

-- PRINT '>> Inserting Data Into: bronze.crm_prd_info';
LOAD DATA LOCAL INFILE 'C:/Users/bhushan.n/Desktop/study/SQL_DATA_WAREHOUSE_PROJECT/datasets/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT * FROM bronze.crm_prd_info;
SELECT COUNT(*) FROM bronze.crm_prd_info;

-- PRINT '>> Truncating Table: bronze.crm_sales_details';
TRUNCATE TABLE bronze.crm_sales_details;

-- PRINT '>> Inserting Data Into: bronze.crm_sales_details';
LOAD DATA LOCAL INFILE 'C:/Users/bhushan.n/Desktop/study/SQL_DATA_WAREHOUSE_PROJECT/datasets/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT * FROM bronze.crm_sales_details;
SELECT COUNT(*) FROM bronze.crm_sales_details;


SELECT'-------------------------------------------------------------';
SELECT'Loading ERP Table';
SELECT'-------------------------------------------------------------';

-- PRINT '>> Truncating Table: bronze.erp_cust_az12';
TRUNCATE TABLE bronze.erp_cust_az12;

-- PRINT '>> Inserting Data Into: bronze.erp_cust_az12';
LOAD DATA LOCAL INFILE 'C:/Users/bhushan.n/Desktop/study/SQL_DATA_WAREHOUSE_PROJECT/datasets/source_erp/cust_az12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT * FROM bronze.erp_cust_az12;
SELECT COUNT(*) FROM bronze.erp_cust_az12;


-- PRINT '>> Truncating Table: bronze.erp_loc_a101';
TRUNCATE TABLE bronze.erp_loc_a101;

-- PRINT '>> Inserting Data Into: bronze.erp_loc_a101';
LOAD DATA LOCAL INFILE 'C:/Users/bhushan.n/Desktop/study/SQL_DATA_WAREHOUSE_PROJECT/datasets/source_erp/loc_a101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT * FROM bronze.erp_loc_a101;
SELECT COUNT(*) FROM bronze.erp_loc_a101;


-- PRINT '>> Truncating Table: bronze.erp_px_cat_g1v2';
TRUNCATE TABLE bronze.erp_px_cat_g1v2;

-- PRINT '>> Inserting Data Into: bronze.erp_px_cat_g1v2';
LOAD DATA LOCAL INFILE 'C:/Users/bhushan.n/Desktop/study/SQL_DATA_WAREHOUSE_PROJECT/datasets/source_erp/px_cat_g1v2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT * FROM bronze.erp_px_cat_g1v2;
SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;
