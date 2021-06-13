FROM centos:7
RUN yum install -y java git zip unzip
RUN mkdir /tomcat
ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.66/bin/apache-tomcat-8.5.66.zip /tomcat
WORKDIR /tomcat
RUN unzip apache-tomcat-8.5.66.zip
COPY /home/vagrant/.jenkins/workspace/task1/target/api.war tomcat/apache-tomcat-8.5.66/webapps
WORKDIR /tomcat/apache-tomcat-8.5.66/bin
RUN chmod +x *.sh
RUN sh startup.sh


