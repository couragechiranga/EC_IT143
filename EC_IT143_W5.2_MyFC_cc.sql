/*=============================================================================
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 5.2 Final Project: My Communities Analysis - Create Answers
 Database: MyFC
 Purpose: Answer four questions using the MyFC player, team, position,
          and salary tables.

 Question 1 original author: Junior Enama Benyomo (4.3 Collaboration Corner)
 Questions 2-4 original author: Courage Chiranga
 Notes: tblPlayerFact may contain monthly snapshots for the same player.
        The queries below use one salary value per player to avoid counting
        the same player's salary repeatedly across snapshots.
=============================================================================*/

USE [MyFC];
GO

/*=============================================================================
 Question 1 (peer-authored): What is the total monthly salary per team?
 Original author: Junior Enama Benyomo
 Answer: Take one salary value per player, join players to teams, and sum by
         team. MAX is appropriate for the supplied sample where mtd_salary
         does not change across the recorded monthly snapshots.
=============================================================================*/
;WITH PlayerSalary AS
(
    SELECT
        pl_id,
        MAX(TRY_CONVERT(decimal(18, 2), mtd_salary)) AS monthly_salary
    FROM dbo.tblPlayerFact
    GROUP BY pl_id
)
SELECT
    t.t_code,
    SUM(ps.monthly_salary) AS total_monthly_salary
FROM PlayerSalary AS ps
INNER JOIN dbo.tblPlayerDim AS p
    ON p.pl_id = ps.pl_id
INNER JOIN dbo.tblTeamDim AS t
    ON t.t_id = p.t_id
GROUP BY t.t_code
ORDER BY total_monthly_salary DESC;
GO

/*=============================================================================
 Question 2: How many players are on each team?
 Original author: Courage Chiranga
 Answer: Count the player IDs for each team.
=============================================================================*/
SELECT
    t.t_code,
    COUNT(p.pl_id) AS player_count
FROM dbo.tblTeamDim AS t
LEFT JOIN dbo.tblPlayerDim AS p
    ON p.t_id = t.t_id
GROUP BY t.t_code
ORDER BY player_count DESC, t.t_code;
GO

/*=============================================================================
 Question 3: How many players are assigned to each position?
 Original author: Courage Chiranga
 Answer: Join the player and position tables using p_id, then count players.
=============================================================================*/
SELECT
    pos.p_name,
    COUNT(p.pl_id) AS player_count
FROM dbo.tblPositionDim AS pos
LEFT JOIN dbo.tblPlayerDim AS p
    ON p.p_id = pos.p_id
GROUP BY pos.p_name
ORDER BY player_count DESC, pos.p_name;
GO

/*=============================================================================
 Question 4: Who are the ten highest-paid players by monthly salary?
 Original author: Courage Chiranga
 Answer: Keep one salary value per player, then return the ten largest amounts.
=============================================================================*/
;WITH PlayerSalary AS
(
    SELECT
        pl_id,
        MAX(TRY_CONVERT(decimal(18, 2), mtd_salary)) AS monthly_salary
    FROM dbo.tblPlayerFact
    GROUP BY pl_id
)
SELECT TOP (10)
    p.pl_name,
    ps.monthly_salary
FROM PlayerSalary AS ps
INNER JOIN dbo.tblPlayerDim AS p
    ON p.pl_id = ps.pl_id
WHERE ps.monthly_salary IS NOT NULL
ORDER BY ps.monthly_salary DESC, p.pl_name;
GO
