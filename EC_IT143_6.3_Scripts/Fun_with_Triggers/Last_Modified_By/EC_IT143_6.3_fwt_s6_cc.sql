/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified By
 Purpose: How can I record which SQL Server user last modified each customer row?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 6 — Ask the next question
Next question: How can I audit which specific columns changed and preserve a history of prior values?
This question starts the next trigger cycle.
*/
USE [EC_IT143_DA];
GO
SELECT TOP (5) CustomerID, ContactName, LastModifiedDate
FROM dbo.t_w3_schools_customers
ORDER BY CustomerID;
GO
