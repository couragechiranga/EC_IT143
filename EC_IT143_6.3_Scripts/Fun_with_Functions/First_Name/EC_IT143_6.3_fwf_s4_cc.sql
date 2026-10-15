/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — First Name
 Script: EC_IT143_6.3_fwf_s4_cc.sql
 Purpose: First name question/answer step in the answer-focused process.
*/
/* Step 4 — Research and test a solution
The name is treated as tokens separated by spaces. CHARINDEX locates the first space and LEFT returns the portion before it. Documentation: https://learn.microsoft.com/en-us/sql/t-sql/functions/charindex-transact-sql and https://learn.microsoft.com/en-us/sql/t-sql/functions/left-transact-sql
Test the query and inspect records with blank or one-word contact names as well as normal two-word names.
*/
USE [EC_IT143_DA];
GO
SELECT CustomerID, ContactName,
       CASE WHEN NULLIF(LTRIM(RTRIM(ContactName)), N'') IS NULL THEN NULL ELSE LEFT(LTRIM(RTRIM(ContactName)), CHARINDEX(N' ', LTRIM(RTRIM(ContactName)) + N' ') - 1) END AS FirstName
FROM dbo.t_w3_schools_customers
WHERE ContactName IS NULL
   OR LTRIM(RTRIM(ContactName)) = N''
   OR CHARINDEX(N' ', LTRIM(RTRIM(ContactName))) = 0
ORDER BY CustomerID;
GO
