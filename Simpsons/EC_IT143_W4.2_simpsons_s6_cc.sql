/*
Author: Courage Chiranga
Database: Simpsons

Step 6: Load the table from the view.
*/

TRUNCATE TABLE dbo.tbl_simpsons_family_count_cc;
GO

INSERT INTO dbo.tbl_simpsons_family_count_cc
    (FamilyDataCount)
SELECT
    family_record_count
FROM dbo.vw_simpsons_family_count_cc;
GO

SELECT *
FROM dbo.tbl_simpsons_family_count_cc;
GO