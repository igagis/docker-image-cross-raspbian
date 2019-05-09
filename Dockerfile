FROM scratch

MAINTAINER Ivan Gagis <igagis@gmail.com>

COPY ./raspchroot /

RUN apt update
RUN apt install -y devscripts equivs
