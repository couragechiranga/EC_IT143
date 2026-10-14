/*
Author: Courage Chiranga
Assignment: MyFC Data Manipulation
Step 8: Execute the stored procedure and verify the results.
*/

EXEC dbo.usp_load_myfc_player_info_cc;
GO

SELECT *
FROM dbo.tbl_myfc_player_info_cc;
GO