/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified By
 Purpose: How can I record which SQL Server user last modified each customer row?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 3 — Research and test a solution
Use SUSER_NAME() to capture the SQL Server login that performed the update. The trigger handles all rows in inserted, not just a single row. Documentation: https://learn.microsoft.com/en-us/sql/t-sql/functions/suser-name-transact-sql and https://learn.microsoft.com/en-us/sql/t-sql/statements/create-trigger-transact-sql
*/
USE [EC_IT143_DA];
GO
SELECT SUSER_NAME() AS CurrentSqlServerUser,
       SYSUTCDATETIME() AS CurrentUtcDateTime;
GO
