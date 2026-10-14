/*
Author: Courage Chiranga
Purpose: Load the MyFC player information table from the view.
Step 6: Combine and load the information.
*/

TRUNCATE TABLE dbo.tbl_myfc_player_info_cc;
GO

INSERT INTO dbo.tbl_myfc_player_info_cc
    (pl_id, pl_name, position_name, team_code)
SELECT
    pl_id,
    pl_name,
    position_name,
    team_code
FROM dbo.vw_myfc_player_info_cc;
GO

SELECT *
FROM dbo.tbl_myfc_player_info_cc;
GO