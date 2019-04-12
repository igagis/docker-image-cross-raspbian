FROM debian:stretch

MAINTAINER Ivan Gagis <igagis@gmail.com>

#RUN cat /etc/apt/sources.list

RUN sed -i -e 's/^deb/deb [arch=amd64,i386]/g' /etc/apt/sources.list

#RUN cat /etc/apt/sources.list

RUN echo "deb [arch=armhf] http://archive.raspbian.org/raspbian stretch main contrib non-free rpi" >> /etc/apt/sources.list.d/rpi.list

RUN apt update
