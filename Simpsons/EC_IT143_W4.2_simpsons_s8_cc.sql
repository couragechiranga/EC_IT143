/*
Author: Courage Chiranga
Database: Simpsons

Step 8: Execute the stored procedure and
verify the results.
*/

EXEC dbo.usp_load_simpsons_family_count_cc;
GO

SELECT *
FROM dbo.tbl_simpsons_family_count_cc;
GO