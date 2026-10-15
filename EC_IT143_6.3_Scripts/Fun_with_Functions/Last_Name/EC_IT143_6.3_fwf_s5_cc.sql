/*
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 6.3 Fun with Functions — Last Name
 Script: EC_IT143_6.3_fwf_s5_cc.sql
 Purpose: Last name question/answer step in the answer-focused process.
*/
/* Step 5 — Create a user-defined scalar function
The function returns one last name value for a supplied contact name.
*/
USE [EC_IT143_DA];
GO
CREATE OR ALTER FUNCTION dbo.ufn_w3_last_name_cc
(
    @ContactName NVARCHAR(255)
)
RETURNS NVARCHAR(255)
AS
BEGIN
    DECLARE @CleanName NVARCHAR(255) = LTRIM(RTRIM(@ContactName));

    IF NULLIF(@CleanName, N'') IS NULL
        RETURN NULL;

    RETURN RIGHT(@CleanName, CHARINDEX(N' ', REVERSE(@CleanName) + N' ') - 1);
END;
GO
