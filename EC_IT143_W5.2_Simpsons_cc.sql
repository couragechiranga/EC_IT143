/*=============================================================================
 Author: Courage Chiranga
 Course: IT 143
 Assignment: 5.2 Final Project: My Communities Analysis - Create Answers
 Database: Simpsons
 Purpose: Answer four questions using Family_Data, Planet_Express, and
          FBS_Viza_Costmo.

 Question 1 original author: Junior Enama Benyomo (4.3 Collaboration Corner)
 Questions 2-4 original author: Courage Chiranga
 Notes: Amount, Debit, and Credit are converted to decimal for aggregation so
        the query can handle numeric fields or text values containing $/commas.
=============================================================================*/

USE [Simpsons];
GO

/*=============================================================================
 Question 1 (peer-authored): What is the total spending by category in
                            Planet_Express?
 Original author: Junior Enama Benyomo
 Answer: Sum transaction Amount by Category.
=============================================================================*/
SELECT
    Category,
    SUM(TRY_CONVERT(decimal(18, 2),
        REPLACE(REPLACE(CONVERT(varchar(50), Amount), '$', ''), ',', '')
    )) AS total_spending
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY total_spending DESC, Category;
GO

/*=============================================================================
 Question 2: Which card members have the highest total spending in
             Planet_Express?
 Original author: Courage Chiranga
 Answer: Sum transaction Amount by Card_Member, highest total first.
=============================================================================*/
SELECT
    Card_Member,
    SUM(TRY_CONVERT(decimal(18, 2),
        REPLACE(REPLACE(CONVERT(varchar(50), Amount), '$', ''), ',', '')
    )) AS total_spending
FROM dbo.Planet_Express
GROUP BY Card_Member
ORDER BY total_spending DESC, Card_Member;
GO

/*=============================================================================
 Question 3: How many Planet_Express transactions are recorded for each
             card member?
 Original author: Courage Chiranga
 Answer: Count the transaction rows for each Card_Member.
=============================================================================*/
SELECT
    Card_Member,
    COUNT_BIG(*) AS transaction_count
FROM dbo.Planet_Express
GROUP BY Card_Member
ORDER BY transaction_count DESC, Card_Member;
GO

/*=============================================================================
 Question 4: What are the total debit and credit amounts for each member in
             FBS_Viza_Costmo?
 Original author: Courage Chiranga
 Answer: Convert Debit and Credit to decimal and aggregate by Member_Name.
=============================================================================*/
SELECT
    Member_Name,
    SUM(TRY_CONVERT(decimal(18, 2),
        REPLACE(REPLACE(CONVERT(varchar(50), Debit), '$', ''), ',', '')
    )) AS total_debit,
    SUM(TRY_CONVERT(decimal(18, 2),
        REPLACE(REPLACE(CONVERT(varchar(50), Credit), '$', ''), ',', '')
    )) AS total_credit
FROM dbo.FBS_Viza_Costmo
GROUP BY Member_Name
ORDER BY total_debit DESC, Member_Name;
GO
