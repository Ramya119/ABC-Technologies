FROM ubuntu:16.04



# Install prerequisites

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install openjdk-8-jdk wget

RUN apt-get -y install curl

RUN mkdir /usr/local/tomcat

RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz -O  /tmp/apache-tomcat-9.0.70.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-9.0.70.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.70/* /usr/local/tomcat/


EXPOSE 8080

# java

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64



# Define default command.

CMD ["bash"]
MAINTAINER ramyasreekanijam911@gmail.com




WORKDIR /usr/local/tomcat/webapps

RUN curl -O -L https://github.com/Ramya119/ABC-Technologies/blob/master/target/ABCtechnologies-1.0.war





CMD ["https://net.cloudinfrastructureservices.co.uk/usr/local/tomcat/bin/catalina.sh", "run"]
