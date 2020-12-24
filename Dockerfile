FROM scratch

MAINTAINER Ivan Gagis <igagis@gmail.com>

COPY ./raspchroot /

RUN apt update
RUN apt upgrade -y
RUN apt install -y devscripts equivs

# There is some bug in Debian Buster arm32, see:
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=923479
# https://github.com/balena-io-library/base-images/issues/562
# The curl is unable to download via https. Doing this 'c_rehash' step fixes the problem.
RUN c_rehash
