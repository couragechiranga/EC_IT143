/*
Author: Courage Chiranga
Database: Simpsons

Step 7: Create a stored procedure to load
the Family_Data record count.
*/

CREATE OR ALTER PROCEDURE dbo.usp_load_simpsons_family_count_cc
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_simpsons_family_count_cc;

    INSERT INTO dbo.tbl_simpsons_family_count_cc
        (FamilyDataCount)
    SELECT
        family_record_count
    FROM dbo.vw_simpsons_family_count_cc;
END;
GO