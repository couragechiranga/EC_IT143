/*
Author: Courage Chiranga
Database: Simpsons

Step 5.2: Refine the table structure.
Add a primary key and appropriate data types.
*/

IF OBJECT_ID(
    'dbo.tbl_simpsons_family_count_cc',
    'U'
) IS NOT NULL
    DROP TABLE dbo.tbl_simpsons_family_count_cc;
GO

CREATE TABLE dbo.tbl_simpsons_family_count_cc
(
    SimpsonsCountID INT IDENTITY(1,1) NOT NULL,

    FamilyDataCount BIGINT NOT NULL,

    CONSTRAINT PK_tbl_simpsons_family_count_cc
        PRIMARY KEY (SimpsonsCountID)
);
GO

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'tbl_simpsons_family_count_cc'
ORDER BY ORDINAL_POSITION;
GO