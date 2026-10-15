IT 143 — Assignment 6.3: User-Defined Functions and Triggers
Author: Courage Chiranga (cc)

IMPORTANT: These scripts are prepared for SQL Server and use the EC_IT143_DA database.
Run them in SSMS in the order below. The scripts have not been executed against your local database, so verify each result in your environment.

PRE-REQUISITE / SETUP
1. In SSMS, confirm EC_IT143_DA has dbo.v_w3_schools_customers. If the view does not exist, first run the course-provided dbo.v_w3_schools_customers.sql file.
2. Run 00_Setup/EC_IT143_6.3_setup_customers_table_cc.sql to materialize the view as dbo.t_w3_schools_customers if that table does not already exist.
3. The Customers data is expected to have CustomerID, ContactName, City columns, as in the course W3Schools Customers dataset.

FUN WITH FUNCTIONS
Run all scripts in Fun_with_Functions/First_Name, s1 through s8, in order. Then run all scripts in Fun_with_Functions/Last_Name, s1 through s8, in order.
The examples define first name as the first whitespace-separated token and last name as the final whitespace-separated token in ContactName. This is appropriate for this exercise, but compound surnames or honorifics may require more detailed name rules.

FUN WITH TRIGGERS
Run Fun_with_Triggers/Last_Modified_Date, s1 through s6, in order. Then run Fun_with_Triggers/Last_Modified_By, s1 through s6, in order.
The trigger scripts add LastModifiedDate and LastModifiedBy audit columns to dbo.t_w3_schools_customers if missing. The test scripts update a customer's City column to its current value; this intentionally keeps the business value unchanged while still exercising an UPDATE trigger.

GITHUB DELIVERABLE
Upload the Fun_with_Functions and Fun_with_Triggers folders (and, if useful, the setup script) to your EC_IT143 repository. Required commit message: Adding deliverable 6.3.
