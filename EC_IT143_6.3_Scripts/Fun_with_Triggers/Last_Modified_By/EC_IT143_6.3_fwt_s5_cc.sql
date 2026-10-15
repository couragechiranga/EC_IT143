/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified By
 Purpose: How can I record which SQL Server user last modified each customer row?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 5 — Test results
This changes City to its existing value for the lowest CustomerID. The business value remains the same, but an UPDATE event fires the trigger.
*/
USE [EC_IT143_DA];
GO
DECLARE @TestCustomerID INT = (SELECT MIN(CustomerID) FROM dbo.t_w3_schools_customers);

IF @TestCustomerID IS NOT NULL
BEGIN
    UPDATE dbo.t_w3_schools_customers
       SET City = City
     WHERE CustomerID = @TestCustomerID;
END;

SELECT CustomerID, ContactName, LastModifiedDate, LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = @TestCustomerID;
GO
