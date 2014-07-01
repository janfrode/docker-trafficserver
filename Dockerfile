# 
FROM rhel:latest
MAINTAINER Jan-Frode Myklebust <janfrode@tanso.net>

RUN yum -y install https://dl.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm
RUN yum -y update
RUN yum -y --enablerepo=epel install trafficserver findutils

# Drop all setuid setgid permissions:
RUN find /usr -perm /6000 -exec chmod -s '{}' \;

CMD /usr/bin/traffic_cop
