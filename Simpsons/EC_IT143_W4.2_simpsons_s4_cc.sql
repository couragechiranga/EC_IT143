/*
Author: Courage Chiranga
Database: Simpsons

Step 4: Create a view to count the records
in the Family_Data table.
*/

CREATE OR ALTER VIEW dbo.vw_simpsons_family_count_cc
AS
SELECT
    COUNT_BIG(*) AS family_record_count
FROM dbo.Family_Data;
GO

SELECT *
FROM dbo.vw_simpsons_family_count_cc;
GO