FROM centos:6.7
MAINTAINER Jan Vincent Liwanag <jvliwanag@gmail.com>

RUN yum update -y && yum install -y wget && wget -P /etc/yum.repos.d  http://rpms.sipfoundry.org.s3-us-west-1.amazonaws.com/canary-release/sipxecs.repo && ls -l /etc/yum.repos.d

RUN yum update -y && yum install -y epel-release && yum install -y sipxecs && yum clean all

