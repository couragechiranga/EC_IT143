/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified Date
 Purpose: How can I record when each customer row was last modified?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 3 — Research and test a solution
SQL Server DML triggers can access the inserted pseudo-table, which lists rows affected by the update. Use it to update audit metadata for every affected CustomerID. Documentation: https://learn.microsoft.com/en-us/sql/t-sql/statements/create-trigger-transact-sql
*/
USE [EC_IT143_DA];
GO
SELECT SUSER_NAME() AS CurrentSqlServerUser,
       SYSUTCDATETIME() AS CurrentUtcDateTime;
GO
