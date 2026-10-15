/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 User-Defined Functions and Triggers
 Purpose: Materialize the course Customers view into a table for the function and trigger exercises.
 Prerequisite: The course-provided dbo.v_w3_schools_customers view must already exist in EC_IT143_DA.
*/
USE [EC_IT143_DA];
GO

IF OBJECT_ID(N'dbo.t_w3_schools_customers', N'U') IS NULL
BEGIN
    IF OBJECT_ID(N'dbo.v_w3_schools_customers', N'V') IS NULL
    BEGIN
        THROW 50001, 'dbo.v_w3_schools_customers was not found. Run the course-provided view script first.', 1;
    END;

    SELECT *
    INTO dbo.t_w3_schools_customers
    FROM dbo.v_w3_schools_customers;
END;
GO

SELECT TOP (10) CustomerID, ContactName, City
FROM dbo.t_w3_schools_customers
ORDER BY CustomerID;
GO
