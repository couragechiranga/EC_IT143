/*
EC_IT143_W4.2_myfc_s1_cc.sql

Step 1: Start with a question.

Question:
What players are in the MyFC database?
*/

SELECT
    pl_id,
    l_name,
    f_name,
    pl_name,
    t_id,
    p_id,
    pl_num
FROM dbo.tblPlayerDim;