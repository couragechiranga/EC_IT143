/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Triggers — Last Modified Date
 Purpose: How can I record when each customer row was last modified?
 Target: dbo.t_w3_schools_customers in EC_IT143_DA
*/
/* Step 4 — Create an AFTER UPDATE trigger */
USE [EC_IT143_DA];
GO
IF COL_LENGTH(N'dbo.t_w3_schools_customers', N'LastModifiedDate') IS NULL
    ALTER TABLE dbo.t_w3_schools_customers ADD LastModifiedDate DATETIME2(0) NULL;
GO

CREATE OR ALTER TRIGGER dbo.trg_w3_customers_last_modified_date_cc
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Avoid another audit update when this trigger updates its own date column.
    IF UPDATE(LastModifiedDate)
        RETURN;

    UPDATE c
       SET LastModifiedDate = SYSUTCDATETIME()
    FROM dbo.t_w3_schools_customers AS c
    INNER JOIN inserted AS i
        ON i.CustomerID = c.CustomerID;
END;
GO
