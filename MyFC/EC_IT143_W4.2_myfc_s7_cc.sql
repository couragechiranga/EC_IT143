/*
Author: Courage Chiranga
Assignment: MyFC Data Manipulation
Step 7: Create a stored procedure to load player information.
*/

CREATE OR ALTER PROCEDURE dbo.usp_load_myfc_player_info_cc
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.tbl_myfc_player_info_cc;

    INSERT INTO dbo.tbl_myfc_player_info_cc
        (pl_id, pl_name, position_name, team_code)
    SELECT
        pl_id,
        pl_name,
        position_name,
        team_code
    FROM dbo.vw_myfc_player_info_cc;
END;
GO