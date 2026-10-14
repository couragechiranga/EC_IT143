/*
Author: Courage Chiranga
Purpose: Create a stored procedure to load
the Hello World table from the view.
*/

CREATE OR ALTER PROCEDURE dbo.usp_load_hello_world_cc
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_hello_world_cc;

    INSERT INTO dbo.tbl_hello_world_cc (Message)
    SELECT Message
    FROM dbo.vw_hello_world_cc;
END;
GO