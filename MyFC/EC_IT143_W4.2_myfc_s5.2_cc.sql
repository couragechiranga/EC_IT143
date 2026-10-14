/*
Author: Courage Chiranga
Purpose: Refine the MyFC player information table.
Step 5.2: Add a primary key and appropriate data types.
*/

IF OBJECT_ID('dbo.tbl_myfc_player_info_cc', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_myfc_player_info_cc;
GO

CREATE TABLE dbo.tbl_myfc_player_info_cc
(
    pl_id INT NOT NULL,
    pl_name VARCHAR(100) NOT NULL,
    position_name VARCHAR(50) NOT NULL,
    team_code VARCHAR(5) NOT NULL,

    CONSTRAINT PK_tbl_myfc_player_info_cc
        PRIMARY KEY (pl_id)
);
GO

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'tbl_myfc_player_info_cc'
ORDER BY ORDINAL_POSITION;
GO