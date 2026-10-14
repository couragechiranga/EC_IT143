/*
EC_IT143_W4.2_myfc_s5_cc.sql

Step 5: Expand the question.

Question:
What are the salaries recorded for MyFC players?
*/

SELECT
    pl_id,
    as_of_date,
    mtd_salary
FROM dbo.tblPlayerFact;