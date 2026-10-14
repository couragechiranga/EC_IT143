/*
Author: Courage Chiranga
Purpose: Create a view combining player,
position, and team information.
*/

CREATE OR ALTER VIEW dbo.vw_myfc_player_info_cc
AS
SELECT
    p.pl_id,
    p.pl_name,
    pos.p_name AS position_name,
    t.t_code AS team_code
FROM dbo.tblPlayerDim AS p
INNER JOIN dbo.tblPositionDim AS pos
    ON p.p_id = pos.p_id
INNER JOIN dbo.tblTeamDim AS t
    ON p.t_id = t.t_id;
GO

SELECT *
FROM dbo.vw_myfc_player_info_cc;
GO
