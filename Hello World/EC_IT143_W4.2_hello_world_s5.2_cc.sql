/*
Author: Courage Chiranga
Purpose: Create a refined Hello World table.
This version includes a primary key, data types,
and constraints.
*/

IF OBJECT_ID('dbo.tbl_hello_world_cc', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_hello_world_cc;
GO

CREATE TABLE dbo.tbl_hello_world_cc
(
    HelloWorldID INT IDENTITY(1,1) NOT NULL,
    Message VARCHAR(50) NOT NULL
        CONSTRAINT DF_tbl_hello_world_cc_Message
        DEFAULT ('Hello World!'),

    CONSTRAINT PK_tbl_hello_world_cc
        PRIMARY KEY (HelloWorldID)
);
GO