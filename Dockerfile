# FROM ubuntu:14.04

# ENV TZ=Etc/UTC
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# RUN apt-get -y update && \
#     apt-get -y install python \
#                        python3 \
#                        sudo
# RUN rm /usr/bin/python && ln -s /usr/bin/python2 /usr/bin/python
# ADD . /build_tools
# WORKDIR /build_tools

# RUN cd tools/linux && \
#     python3 ./automate.py server

# CMD bash

FROM ghcr.io/zsgsdesign/onlyoffice_build_tools:master

COPY build.pro build.pro

RUN python3 make.py