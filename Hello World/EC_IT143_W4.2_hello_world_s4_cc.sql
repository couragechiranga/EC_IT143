/*
Author: Courage Chiranga
Purpose: Create a view that displays the Hello World message.
*/

CREATE OR ALTER VIEW dbo.vw_hello_world_cc
AS
    SELECT 'Hello World!' AS Message;
GO

SELECT * FROM dbo.vw_hello_world_cc;
GO