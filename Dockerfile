FROM centos:7
RUN yum install -y java git 
WORKDIR /home/vagrant/jenkins/tomcat/apache-tomcat-8.5.66/bin
RUN chmod +x *.sh
RUN sh startup.sh


