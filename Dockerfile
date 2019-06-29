FROM centos:7
MAINTAINER james

RUN yum install -y wget

RUN yum install -y java-1.8.0-openjdk

RUN cd /

RUN wget http://ftp.mirror.tw/pub/apache/tomcat/tomcat-8/v8.5.42/bin/apache-tomcat-8.5.42.tar.gz
RUN tar zxvf apache-tomcat-8.5.42.tar.gz

CMD ["/apache-tomcat-8.5.42/bin/catalina.sh", "run"]
