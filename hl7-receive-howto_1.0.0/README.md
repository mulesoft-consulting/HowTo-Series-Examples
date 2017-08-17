
#Receive, transform, translate HL7 data received from EHR like Epic, Cerner, etc
#
This example illustrates how using mulesoft HL7 MLLP and HL7 EDI connectors, we can receive, transform, translate and write HL7 data. 
It is complementary to the developer blog [article](https://blogs.mulesoft.com/dev/howto/handle-hl7-messages-with-anypoint-platform/) that gives step by step instructions to build out this example.


###Assumptions
###
This document describes the details of the example within the context of
Anypoint™ Studio, Mule ESB’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](http://www.mulesoft.org/documentation/display/current/
Anypoint+Studio+Essentials)

We use an HL7 message editor, transmitter  [HAPI test pannel](http://hl7api.sourceforge.net/hapi-testpanel/) to send HL7 message. 



###Example Use Case
###
In this example we will simulate sending an HL7 message over MLLP using HAPI test pannel. 
Using mulesoft HL7 connector we will receive the HL7 message and parse the fields. 
With sophisticated data transformation capabilities of [data weave](https://docs.mulesoft.com/mule-user-guide/v/3.8/dataweave) we will perform translation and lookup on certain fields on the incoming HL7 message. 


###Set Up and Run the Example
###

As with other [examples](https://www.mulesoft.com/exchange#!/?types=example), you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.

Follow the procedure below to run the HL7 message receive HowTo example. 

1) Download the example project from [exchange](https://anypoint.mulesoft.com/exchange/?type=example&search=hl7)
2) Open the project in Anypoint Studio
3) Set up database table by running the sql file under folder src/test/resources/sql
4) Use the sample HL7 message file under src/test/resources/hl7
5) Configure the properties in mule-app.properties
6) Open HAPI test panel and enter the sample HL7 message. Start the test pannel. 
7) Run the project.(Important: run HAPI test panel first and then start the Mule project in Studio)
8) Play the message in HAPI test pannel. 


###Go Further
To learn how to build this example out check out this [blog](https://blogs.mulesoft.com/dev/howto/handle-hl7-messages-with-anypoint-platform/) where we give step by step instrcutions.
Learn about [HL7 standard](http://www.hl7.org/implement/standards/)
###
* View this

