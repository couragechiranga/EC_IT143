/*
Author: Courage Chiranga
Purpose: Create a table from the Hello World view.
*/

IF OBJECT_ID('dbo.tbl_hello_world_cc', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_hello_world_cc;
GO

SELECT Message
INTO dbo.tbl_hello_world_cc
FROM dbo.vw_hello_world_cc;
GO

SELECT *
FROM dbo.tbl_hello_world_cc;
GO