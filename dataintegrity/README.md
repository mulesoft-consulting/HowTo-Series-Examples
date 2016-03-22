# Data cleansing and integrity check in ETL with error handling 
#
This example illustrates how the batch processing module can be used to perform batch loads in the Anypoint platform. The example is used to perform s number of data integrity checks.
If there is an error on any of the data validations, the record needs to be put into a separate error table for review.
It is complementary to a developer blog series that gives step by step instructions to build out this example.

###Assumptions
###
This document describes the details of the example within the context of
Anypoint™ Studio, Mule ESB’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](http://www.mulesoft.org/documentation/display/current/
Anypoint+Studio+Essentials), MySQL, the [database
connector](http://www.mulesoft.org/documentation/display/current/
Database+Connector) and
[Batch processing module]
(https://docs.mulesoft.com/mule-user-guide/v/3.7/batch-processing#sts=Batch Processing).

###Example Use Case
###
In this example we poll for all new order records in a MySQL database table(extract). For each order record, we do the following - 

1. Lookup the product details for each SKUs using SKU number in the record.
2. Lookup the order status for the order using Order ID in the record.
3. Insert the merged data with product details and order status into the Status Report table

While doing the above, we ensure that the following data integratity checks are performed - 

- Deduplicate records in the source table based on Order ID
- Ensure that the required fields are present
- Ensure the value of the fields such as Order ID is between 1 - 10000
- Ensure the length of the the retailer name is not greater than 70 characters

If there is an error in any of these checks, we insert an error record with the appropriate error message into the ORDERS_ERRORS table.

###Set Up and Run the Example
###

1. **[Download and setup the MySQL
driver](http://dev.mysql.com/doc/refman/5.7/en/installing.html)** in
it's default location. You can even check out some of the YouTube videos
for assistance with this step.

2. **Start the MySQL server** from System Preferences

3. Open the Example project in Anypoint Studio from [Anypoint
Exchange](http://www.mulesoft.org/documentation/display/current/Anypoint
+Exchange). 

4. Open src/main/resources/order_integrity.sql and run it in your mysql instance. This script will create a database called "ETL" and a number of tables load them with mock data.

5. Edit the src/main/app/mule-app.properties file to put the required MySQL configuration details.

6. Run the example application in Anypoint Studio or Standalone

7. Check whether the table "STATUS_REPORT" got populated with data.

###Go Further
###
* View this

