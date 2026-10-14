/*
EC_IT143_W4.2_myfc_s4_cc.sql

Step 4: Expand the question.

Question:
What team does each MyFC player belong to?
*/

SELECT
    p.pl_id,
    p.pl_name,
    t.t_code
FROM dbo.tblPlayerDim AS p
INNER JOIN dbo.tblTeamDim AS t
    ON p.t_id = t.t_id;