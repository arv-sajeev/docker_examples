# Installation seems easy till 16.04 I had a lot of touble with bionic beaver

FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt install -y build-essential
RUN apt-get install libncurses5-dev

# Making a shared directory
RUN mkdir -p /root/os161/src
RUN mkdir -p /root/os161/tools/bin

# Declare build paths
RUN export PREFIX=/root/os161/tools
RUN export PREFIX=/root/os161/src
RUN export PATH=$PATH:$PREFIX/bin
RUN cd /root/os161/src

# Downloading os161-toolchain and os161 source
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-binutils.tar.gz -P /root/bin;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-gcc.tar.gz -P /root//bin;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-gdb.tar.gz -P /root/bin;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-bmake.tar.gz -P /root/bin;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-mk.tar.gz -P /root/bin;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/sys161.tar.gz -P /root/bin;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161.tar.gz -P /root/bin;
RUN echo "Downloads are done";
RUN ls | xargs -t -n1 tar -xvf;
RUN echo "Extraction done";
RUN echo "The directory setup is done continue using step from Jinghao Shi's blog http://jhshi.me/2013/12/15/os161-tool-chain-setup/index.html#.XyPJdHUzaV5"




# Build and install binutils


VOLUME  /root



