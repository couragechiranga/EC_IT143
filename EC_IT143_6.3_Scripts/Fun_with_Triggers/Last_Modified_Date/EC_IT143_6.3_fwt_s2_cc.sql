/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified Date
 Purpose: How can I record when each customer row was last modified?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 2 — Begin creating an answer
Add an audit column and use an AFTER UPDATE trigger to set it when a customer row changes.
*/
USE [EC_IT143_DA];
GO
SELECT TOP (5) CustomerID, ContactName, City
FROM dbo.t_w3_schools_customers
ORDER BY CustomerID;
GO
