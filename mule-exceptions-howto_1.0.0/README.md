
# HowTo - Part 1 Exception Handling in Mule #
***
This example illustrates how to leverage Mule Exception framework to catch, classify and handle errors in Mule flows. This is Part 1 of a series for exception handling.

Click [here](http://blogs.mulesoft.com/dev/wrap-soap-web-service-around-a-database/) to read Part 1 of the series.

## Assumptions ##
This document describes the details of the example within the context of
Anypoint™ Studio, Mule ESB’s graphical user interface (GUI). Where
appropriate, the XML configuration accompanies the Studio interface
screenshots. This document assumes that you are familiar with Mule ESB,
the [Anypoint Studio
interface](http://www.mulesoft.org/documentation/display/current/
Anypoint+Studio+Essentials)

## Example Use Case ##
In this example we use a JMS queue to intiate a Mule flow to trigger different classes of exceptions. Depending on the type of exception (retriable or non-retriable) we configure the exception handling strategy to process accordingly.

## Set Up and Run the Example ##
As with other [examples](https://www.mulesoft.com/exchange#!/?types=example), you can create template applications straight out of the box in Anypoint Studio. You can tweak the configurations of these use case-based examples to create your own customized applications in Mule.

### ActiveMQ setup ###
This example relies on an ActiveMQ instance to connect to. For more details on how to setup ActiveMQ, please refer to ActiveMQ documentation located [here](https://activemq.org). You can use a different JMS broker if you have one available, some additional reconfiguration of the JMS connector will be required. You will also need to [download](http://central.maven.org/maven2/org/apache/activemq/activemq-all/5.13.4/activemq-all-5.13.4.jar) the ActiveMQ jar library and save into src/main/app/lib/activemq-all-5.13.4.jar. You will also need to modify the mule-app.properties file to update the following properties to match your environment

| Property | Description |
|----------|-------------|
| activemq.brokerurl | The broker url for Active MQ. Format should be tcp://localhost:61616 |
| activemq.username  | User required for connecting to ActiveMQ |
| activemq.password  | Password required for the user used for connecting to ActiveMQ |

### Database setup ###

This example intentionally does not require a database to simulate a database down exception to highlight what happens when a database becomes unavailable. However a a SQL script for a MySQL database is provided for completeness. Even though we are not using the database connector a jar library is required for runtime binding. You will need to [download](http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.38/mysql-connector-java-5.1.38.jar)
 the MySQL jar library and save into src/main/app/lib/mysql-connector-java-5.1.38.jar
