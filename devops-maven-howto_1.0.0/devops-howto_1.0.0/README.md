#Build SOAP web service over a mysql DB lookup
#
This example illustrates how to define a SOAP based webservice on top of
a database lookup operation. 
It is complementary to a developer blog
series that gives step by step instructions to build out this example.



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
[DataSense](http://www.mulesoft.org/documentation/display/current/
Database+Connector).

## Description

This example application is complementary to [How To Devops - Part 2](http://blogs.mulesoft.com/dev/howto/maven/) of the developer blog, "Leveraging Maven for Build Automation" . It illustrates how to leverage Maven plugin in Anypoint Studio to build existing Mule implementation.  

After reading the corresponding blog, creating and running the example in Mule, you should be able to leverage what you have learned to use Maven for automating builds. 

## Example Use Case

Maven is implemented on top of an existing [MUnit project] (https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service) to enable build automation.

## Set Up and Run the Example

As with other examples, you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.
1.	Make sure you have all the pre-requisites for the [original SOAP project] (https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service) set up & configured
2.	Install MUnit in the Anypoint Studio as instructed in the MUnit 
[blog](http://blogs.mulesoft.com/dev/howto/munit/)
3.	Install Maven  in the Anypoint Studio as instructed in the Maven 
[blog](http://blogs.mulesoft.com/dev/howto/maven/)
4. Import the project in Anypoint Studio and run the example


