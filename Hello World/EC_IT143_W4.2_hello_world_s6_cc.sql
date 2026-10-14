/*
Author: Courage Chiranga
Purpose: Load the Hello World table from the view.
*/

TRUNCATE TABLE dbo.tbl_hello_world_cc;
GO

INSERT INTO dbo.tbl_hello_world_cc (Message)
SELECT Message
FROM dbo.vw_hello_world_cc;
GO

SELECT *
FROM dbo.tbl_hello_world_cc;
GO