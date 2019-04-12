FROM debian:stretch

MAINTAINER Ivan Gagis <igagis@gmail.com>

RUN apt update
RUN apt install -y dirmngr
# RUN apt install -y g++-arm-linux-gnueabihf gcc-arm-linux-gnueabihf

RUN sed -i -e 's/^deb/deb [arch=amd64,i386]/g' /etc/apt/sources.list

RUN echo "deb [arch=armhf] http://archive.raspbian.org/raspbian stretch main contrib non-free rpi" >> /etc/apt/sources.list.d/rpi.list

#RUN apt-config dump | grep APT::Arch

#RUN echo 'APT::Architecture "armhf";' >> /etc/apt/apt.conf.d/99default-arch

RUN dpkg --add-architecture armhf

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9165938D90FDDD2E

RUN apt update

# RUN apt list --upgradable

RUN apt install -y gcc-6-base:armhf
