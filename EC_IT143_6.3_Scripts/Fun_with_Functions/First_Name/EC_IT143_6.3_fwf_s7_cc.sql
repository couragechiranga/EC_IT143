/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — First Name
 Script: EC_IT143_6.3_fwf_s7_cc.sql
 Purpose: First name question/answer step in the answer-focused process.
*/
/* Step 7 — Zero-results-expected test
If the function matches the ad hoc expression, this query should return zero rows.
*/
USE [EC_IT143_DA];
GO
WITH NameComparison AS
(
    SELECT CustomerID,
           CASE WHEN NULLIF(LTRIM(RTRIM(ContactName)), N'') IS NULL THEN NULL ELSE LEFT(LTRIM(RTRIM(ContactName)), CHARINDEX(N' ', LTRIM(RTRIM(ContactName)) + N' ') - 1) END AS AdHocName,
           dbo.ufn_w3_first_name_cc(ContactName) AS FunctionName
    FROM dbo.t_w3_schools_customers
)
SELECT CustomerID, AdHocName, FunctionName
FROM NameComparison
WHERE ISNULL(AdHocName, N'') <> ISNULL(FunctionName, N'');
GO
