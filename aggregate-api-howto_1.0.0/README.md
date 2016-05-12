#Create API Aggregation
#
This example illustrates how to aggregate responses from multiple APIs into a single response.
It is complementary to a developer blog series that gives step by step instructions to build out this example.



###Assumptions
###
This document describes the details of the example within the context of
Anypoint™ Studio, Mule ESB’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](http://www.mulesoft.org/documentation/display/current/
Anypoint+Studio+Essentials).

###Example Use Case
###
In this use case we receive a customerId query parameter as an input. 
We will use this value to invoke two APIs. One to fetch customer details and the other to fetch
account details.
These APIs can be REST service or SOAP based web services.
Once the APIs are invoked the response from both are aggregated and mapped to the final response message.

We will use scatter gather design pattern to invoke multiple APIs in parallel. 
Once all the responses are collected, we finally map it to the output. 

###Set Up and Run the Example
###

1. In this example we invoke two APIs, [Customer REST API](https://www.mulesoft.com/exchange/#!/RESTXML) and [Account SOAP Webservice](https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service). 
We have covered in out previous blog posts  on how to create these services. 
Check out the links, [Customer REST API](http://blogs.mulesoft.com/dev/howto/build-rest-api-with-xml-payload/) and [Account SOAP Webservice](http://blogs.mulesoft.com/dev/howto/wrap-soap-web-service-around-a-database/)

2. In order to run this example you can download the mule project from [Exchange](https://www.mulesoft.com/exchange) and deploy it to [Mule iPass](https://www.mulesoft.com/platform/saas/cloudhub-ipaas-cloud-based-integration). 


3. After running the services open the Example project in Anypoint Studio from [Anypoint
Exchange](http://www.mulesoft.org/documentation/display/current/Anypoint
+Exchange). 

4. Open src/main/app/mule-app.properties and add the properties for the two services. 

5. Run the example application in Anypoint Studio or Standalone

6. If you are running the project in Anypoint Studio then test it using the APIkit Console that pops up after running the project. If you are following the sample projects then try customerid = 1. 




