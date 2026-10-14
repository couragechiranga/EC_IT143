/*
Author: Courage Chiranga
Purpose: Execute the Hello World stored procedure
and verify that the table contains the message.
*/

EXEC dbo.usp_load_hello_world_cc;
GO

SELECT *
FROM dbo.tbl_hello_world_cc;
GO