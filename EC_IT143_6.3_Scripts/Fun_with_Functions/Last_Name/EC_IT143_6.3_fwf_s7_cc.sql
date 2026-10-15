/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — Last Name
 Script: EC_IT143_6.3_fwf_s7_cc.sql
 Purpose: Last name question/answer step in the answer-focused process.
*/
/* Step 7 — Zero-results-expected test
If the function matches the ad hoc expression, this query should return zero rows.
*/
USE [EC_IT143_DA];
GO
WITH NameComparison AS
(
    SELECT CustomerID,
           CASE WHEN NULLIF(LTRIM(RTRIM(ContactName)), N'') IS NULL THEN NULL ELSE RIGHT(LTRIM(RTRIM(ContactName)), CHARINDEX(N' ', REVERSE(LTRIM(RTRIM(ContactName))) + N' ') - 1) END AS AdHocName,
           dbo.ufn_w3_last_name_cc(ContactName) AS FunctionName
    FROM dbo.t_w3_schools_customers
)
SELECT CustomerID, AdHocName, FunctionName
FROM NameComparison
WHERE ISNULL(AdHocName, N'') <> ISNULL(FunctionName, N'');
GO
