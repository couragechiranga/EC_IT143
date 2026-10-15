/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — First Name
 Script: EC_IT143_6.3_fwf_s3_cc.sql
 Purpose: First name question/answer step in the answer-focused process.
*/
/* Step 3 — Create an ad hoc SQL query */
USE [EC_IT143_DA];
GO
SELECT CustomerID, ContactName,
       CASE WHEN NULLIF(LTRIM(RTRIM(ContactName)), N'') IS NULL THEN NULL ELSE LEFT(LTRIM(RTRIM(ContactName)), CHARINDEX(N' ', LTRIM(RTRIM(ContactName)) + N' ') - 1) END AS FirstName
FROM dbo.t_w3_schools_customers
ORDER BY CustomerID;
GO
