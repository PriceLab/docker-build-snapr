FROM ubuntu:14.04

MAINTAINER John C. Earls

#get prereqs
RUN sudo apt-get -y update && sudo apt-get install -y  g++ \
    zlib1g-dev \
    make

#make volume for code
RUN mkdir /snapr
VOLUME ["/snapr"]

#add script that builds source
COPY entrypoint.sh /

#Run build
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
