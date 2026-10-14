

/*****************************************************************************************************************
NAME:     EC_IT143_W5.2_MyFc_ac
PURPOSE:  Week 5.2 – Create Answers for MyFC Community

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/05/2026   Artwell Chakanetsa      1. Built this script for EC IT143


RUNTIME:
5s


******************************************************************************************************************/
USE MyFC;
GO


/* =======================================================================================
MyFc Team coordinator
Author (Me)

Q1:What is the distribution of player positions by team?
This question groups Position by TeamName to show how talent is distributed within teams.
======================================================================================= */

SELECT
    t.t_code AS TeamName,
    pos.p_name AS Position,
    COUNT(p.pl_id) AS PlayerCount
FROM dbo.tblPlayerDim p
JOIN dbo.tblTeamDim t
    ON p.t_id = t.t_id
JOIN dbo.tblPositionDim pos
    ON p.p_id = pos.p_id
GROUP BY
    t.t_code,
    pos.p_name
ORDER BY
    t.t_code,
    PlayerCount DESC;


/* =======================================================================================
MyFc Sports analyst / researcher
Author:Me

Q2:What is the average monthly salary of players across all teams, and how does it differ by playing position?
This question compares salary distribution using the Players table’s MonthlySalary and Position fields to identify patterns.
======================================================================================= */

SELECT
    pos.p_name AS Position,
    AVG(f.mtd_salary) AS AverageMonthlySalary
FROM dbo.tblPlayerFact f
JOIN dbo.tblPlayerDim p
    ON f.pl_id = p.pl_id
JOIN dbo.tblPositionDim pos
    ON p.p_id = pos.p_id
GROUP BY pos.p_name
ORDER BY AverageMonthlySalary DESC;


/* =======================================================================================
MyFc Sports economics researcher
Author(Me)

Q3:How does the average player age relate to their salary levels across all teams?
This question examines if age and experience affect compensation using fields  MonthlySalary and TeamName.
======================================================================================= */

SELECT
    t.t_code AS TeamName,
    AVG(f.mtd_salary) AS AverageMonthlySalary
FROM dbo.tblPlayerFact f
JOIN dbo.tblPlayerDim p
    ON f.pl_id = p.pl_id
JOIN dbo.tblTeamDim t
    ON p.t_id = t.t_id
GROUP BY t.t_code
ORDER BY AverageMonthlySalary DESC;

/* =======================================================================================
Q:4 (Prosper Otakhoigbogie)
 Can you show me the pl_name, t_code, and mtd_salary for the three highest-paid players so I can back the biggest winners?
======================================================================================= */

SELECT TOP 3
    p.pl_name,
    t.t_code AS TeamCode,
    f.mtd_salary
FROM dbo.tblPlayerFact f
JOIN dbo.tblPlayerDim p
    ON f.pl_id = p.pl_id
JOIN dbo.tblTeamDim t
    ON p.t_id = t.t_id
WHERE f.as_of_date = (
    SELECT MAX(as_of_date)
    FROM dbo.tblPlayerFact
)
ORDER BY f.mtd_salary DESC;




