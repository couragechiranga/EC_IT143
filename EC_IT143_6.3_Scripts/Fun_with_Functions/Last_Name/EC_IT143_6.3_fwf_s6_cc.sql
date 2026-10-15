/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — Last Name
 Script: EC_IT143_6.3_fwf_s6_cc.sql
 Purpose: Last name question/answer step in the answer-focused process.
*/
/* Step 6 — Compare the scalar function result with the ad hoc query result */
USE [EC_IT143_DA];
GO
SELECT CustomerID,
       ContactName,
       CASE WHEN NULLIF(LTRIM(RTRIM(ContactName)), N'') IS NULL THEN NULL ELSE RIGHT(LTRIM(RTRIM(ContactName)), CHARINDEX(N' ', REVERSE(LTRIM(RTRIM(ContactName))) + N' ') - 1) END AS AdHocLastName,
       dbo.ufn_w3_last_name_cc(ContactName) AS FunctionLastName
FROM dbo.t_w3_schools_customers
ORDER BY CustomerID;
GO
