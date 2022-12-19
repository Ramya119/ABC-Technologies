FROM ubuntu:18.04
LABEL maintainer=”ramyasreekanijam911@gmail.com”

RUN apt-get -y update 
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get install zip -y

RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN mv /tmp/apache-tomcat-8.5.55 /opt/tomcat

COPY target/ABCtechnologies-1.0.war /tmp/ABCtechnologies-1.0.war
RUN unzip /tmp/ABCtechnologies-1.0.war -d /tmp/ABCtechnologies
RUN mv /tmp/ABCtechnologies /opt/tomcat/webapps/

EXPOSE 8080
CMD /opt/tomcat/bin/catalina.sh run
