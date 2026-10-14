/*
EC_IT143_W4.2_myfc_s6_cc.sql

Step 6: Combine the information.

Question:
What player, position, and team information is available in MyFC?
*/

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