FROM centos:7
RUN yum install -y java  
WORKDIR /home/vagrant/jenkins/tomcat/apache-tomcat-8.5.66/bin
CMD chmod +x *.sh && sh startup.sh
 


