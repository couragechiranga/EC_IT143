/*
Author: Courage Chiranga
Database: Simpsons

Step 5.1: Create a table from the view.
*/

IF OBJECT_ID(
    'dbo.tbl_simpsons_family_count_cc',
    'U'
) IS NOT NULL
    DROP TABLE dbo.tbl_simpsons_family_count_cc;
GO

SELECT
    family_record_count
INTO dbo.tbl_simpsons_family_count_cc
FROM dbo.vw_simpsons_family_count_cc;
GO

SELECT *
FROM dbo.tbl_simpsons_family_count_cc;
GO