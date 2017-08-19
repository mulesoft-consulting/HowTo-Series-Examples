
# Build REST API on Top of SOAP Based Webservice

This example illustrates how to define a REST API on top of an existing web service. 
It is complementary to a developer blog series [Part 2]() that gives step by step instructions to build out this example.

This example is a follow up to [Part 1](http://blogs.mulesoft.com/dev/wrap-soap-web-service-around-a-database/) of the developer blog series. 


### Assumptions

This document describes the details of the example within the context of
Anypoint™ Studio, Mule’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](https://docs.mulesoft.com/anypoint-studio/v/6/)

### Example Use Case

In this example we have an existing SOAP based web service that takes in customer id or loan id and returns the corresponding details. 
We define a RESTful interface on top of this SOAP web service using the Anypoint Platform using a design first approach. 

### Set Up and Run the Example

As with other [examples](https://www.mulesoft.com/exchange/?type=example), you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.

Follow the procedure below to create, then run the REST Proxy HowTo example. 
1. In this use case we proxy to a SOAP webservice. Refer to [Part 1](http://blogs.mulesoft.com/dev/wrap-soap-web-service-around-a-database/) to download and deploy the web service on Runtime Manager. 
2. Download the project rest-proxy-howto_1.0.0 from Anypoint Exchange, export it into Anypoint Studio. 
3. Open the configuration file "rest-proxy-soap.xml". Configure the "SOAP Webservice" component connector configuration "Web_Service_Consumer". Enter the correct WSDL location for the SOAP based web service that we are creating proxy to. 
   This populates all the other fields in the "Web_Service_Consumer" resource.   
4. If you have deployed the web service as instructed in step 1, then the corresponding mappings would be valid. If you are using a different web service to proxy to then change the mappings in the component "Transform to SOAP request" and "Transform from SOAP response". 
5. Once the mappings are configured correctly run the project as a mule application in Anypoint Studio. Once the project is running successfully, the API console comes up which can be used to test the REST API. 

