#Implement MUnit for testing a SOAP Service
#
This example illustrates how to test an existing Mule implementation without having to write any java or JUnit code using MUnit.   
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
[DataSense](http://www.mulesoft.org/documentation/display/current/
Database+Connector).

## Description

This example application is complementary to [How To Devops - Part 1](http://blogs.mulesoft.com/dev/howto/munit/) of the developer blog, "Leveraging MUnit for Build Automation". It illustrates how to test an existing Mule implementation without having to write any java or JUnit code using MUnit.  

After reading the corresponding blog, creating and running the example in Mule, you should be able to leverage what you have learned to use MUnit for unit and integration testing. 

## Example Use Case

MUnit is implemented on top of an existing [SOAP project] (https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service) to enable unit test automation of flows in the project.

## Set Up and Run the Example

As with other examples, you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.
1.	Make sure you have all the pre-requisites for the [original SOAP project] (https://www.mulesoft.com/exchange/#!/expose-database-through-soap-web-service) set up & configured
2.	Install MUnit in the Anypoint Studio as instructed in the MUnit [blog](http://blogs.mulesoft.com/dev/howto/munit/)



