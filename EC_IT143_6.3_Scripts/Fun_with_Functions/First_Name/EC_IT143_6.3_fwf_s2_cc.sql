/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — First Name
 Script: EC_IT143_6.3_fwf_s2_cc.sql
 Purpose: First name question/answer step in the answer-focused process.
*/
/* Step 2 — Begin creating an answer
Plan: I will trim spaces and return the characters before the first space. I will test this as an ad hoc query, then create a reusable scalar function.
*/
USE [EC_IT143_DA];
GO
SELECT TOP (10) CustomerID, ContactName
FROM dbo.t_w3_schools_customers
ORDER BY CustomerID;
GO
