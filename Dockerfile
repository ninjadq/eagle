# ShawdowSocksServer
#
# Version 0.0.1

FROM centos
RUN yum install python-setuptools -y
RUN echo y | easy_install pip
RUN pip install shadowsocks
ADD ShadowSocksServer.json /etc/ShadowSocksServer.json
