## Description

This example application is complementary to [How To Devops - Part 1]( http://blogs.mulesoft.com/dev/howto/howto-devops-munit) of the developer blog, "Leveraging MUnit for Test Automation". It illustrates how to test an existing Mule implementation without having to write any java or JUnit code using MUnit.  

Intent of the blog and corresponding example here is to help you get jumpstarted on using MUnit for testing Mule applications.

## Example Use Case

MUnit is implemented on top of an existing [SOAP project](https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service) to enable unit testing of flows in the project.
In the original SOAP example, a user calls the Mule application by submitting a request via a SOAP client (ex SOAPUI ). The application receives the request with a customerID or loanID. It uses the input request parameter to lookup the loan database table. The database record is returned in SOAP response message to the SOAP client.
The request to the application is now mocked using MUnit and response validated as well. Test reports are also generated and stored by MUnit for review purposes.

## Set Up and Run the Example

As with other examples, you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.

1. Make sure you have all the pre-requisites for the [original SOAP project](https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service) set up & configured. This includes downloading the MySQL driver, configuring the database credentials in Mule and setting up mock data in the database. Specifics below or can be found [here as well]( https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service)
    * [Download and setup the MySQL driver](http://dev.mysql.com/doc/refman/5.7/en/installing.html) in it's default location. You can check out some of the YouTube videos for assistance with this step.
    * Start the MySQL server from System Preferences
    * Open the Example project in Anypoint Studio from Anypoint Exchange. (By default, Studio displays the flows using the new Studio light theme, to get the classic theme as shown in the blog, change it as follows: AnypointStudio-->Preferences-->Appearance--->Theme--->Classic)
    * Open src/main/resources/loan.sql and run it in your mysql instance. This script will create a table name "loan" and load it with mock data.
    * Open soap-on-db.xml file located in src/main/app directory. Set url attribute of the db:mysql-config element to:
    `<db:mysql-config name="MySQL_Configuration" host="localhost" port="3306" user="<username>" password="<password>"        database="bank" doc:name="MySQL Configuration"/>` Configure the username and password as per the database being used.
   * Run the example application in Anypoint Studio or Standalone
   * Open up SOAP UI. Create a new project and point it to the wsdl url
(http://localhost:8081/bank/loan?wsdl). In the request message populate the loanId or customerId for the lookup and press send.
2. Install MUnit in the Anypoint Studio as instructed in the MUnit [blog](http://blogs.mulesoft.com/dev/howto/howto-devops-munit)
3. Run the example as a MUnit application
