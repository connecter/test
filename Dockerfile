FROM centos:6.7
MAINTAINER Jan Vincent Liwanag <jvliwanag@gmail.com>

RUN yum update -y && yum install -y wget && wget http://rpms.sipfoundry.org.s3-us-west-1.amazonaws.com/canary-release/sipxecs-install && chmod +x sipxecs-install && ./sipxecs-install
