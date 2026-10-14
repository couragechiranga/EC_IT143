/*
Author: Courage Chiranga
Database: Simpsons

Step 3: Create an ad hoc SQL query.

Question:
How many records are in the Family_Data table?
*/

SELECT
    COUNT_BIG(*) AS family_record_count
FROM dbo.Family_Data;