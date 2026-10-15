/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified By
 Purpose: How can I record which SQL Server user last modified each customer row?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 4 — Create an AFTER UPDATE trigger */
USE [EC_IT143_DA];
GO
IF COL_LENGTH(N'dbo.t_w3_schools_customers', N'LastModifiedBy') IS NULL
    ALTER TABLE dbo.t_w3_schools_customers ADD LastModifiedBy NVARCHAR(128) NULL;
GO

CREATE OR ALTER TRIGGER dbo.trg_w3_customers_last_modified_by_cc
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Prevent recursion when either audit column is updated by this trigger or the date trigger.
    IF UPDATE(LastModifiedBy) OR UPDATE(LastModifiedDate)
        RETURN;

    UPDATE c
       SET LastModifiedBy = CONVERT(NVARCHAR(128), SUSER_NAME()),
           LastModifiedDate = SYSUTCDATETIME()
    FROM dbo.t_w3_schools_customers AS c
    INNER JOIN inserted AS i
        ON i.CustomerID = c.CustomerID;
END;
GO
