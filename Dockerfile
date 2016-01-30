FROM centos:6.7
MAINTAINER Jan Vincent Liwanag <jvliwanag@gmail.com>

RUN yum update -y && yum install -y wget 
RUN cd /etc/yum.repos.d && wget  http://rpms.sipfoundry.org.s3-us-west-1.amazonaws.com/canary-release/sipxecs.repo
RUN yum update -y && yum install -y epel-release && yum install -y sipxecs && yum clean all
 

