# Installation seems easy till 16.04 I had a lot of touble with bionic beaver

FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt install -y build-essential
RUN apt-get install -y libncurses5-dev

# Making a shared directory
RUN mkdir -p /root/os161/src
RUN mkdir -p /root/os161/tools/bin

# Declare build paths
ENV PREFIX=/root/os161/tools
ENV BUILD=/root/os161/src
ENV PATH=$PATH:$PREFIX/bin
RUN echo $BUILD
RUN echo $PREFIX

# Downloading os161-toolchain and os161 source

RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-binutils.tar.gz -P /root/os161/src;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-gcc.tar.gz -P /root/os161/src;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-gdb.tar.gz -P /root/os161/src;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-bmake.tar.gz -P /root/os161/src;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/sys161.tar.gz -P /root/os161/src;
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161.tar.gz -P /root/os161/src;
RUN echo "Downloads are done";
RUN cd /root/os161/src;pwd;ls;ls | xargs -t -n1 tar -xvf ;

#Note that the mk file has to be unzipped into the bmake directory
RUN wget  http://www.student.cs.uwaterloo.ca/~cs350/os161_repository/os161-mk.tar.gz -P /root/os161/src;
RUN cd /root/os161/src/bmake;tar xvf ../os161-bmake.tar.gz
RUN echo "Extraction done";
RUN echo $PREFIX
RUN echo $BUILD


# Build and install binutils
RUN cd /root/os161/src/binutils-2.17+os161-2.0.1; ./configure --nfp --disable-werror --target=mips-harvard-os161 --prefix=$PREFIX;find . -name '*.info' | xargs touch;make;make install; cd ..;
RUN echo "binutils installation complete"

# Build and install GCC
RUN cd /root/os161/src/gcc-4.1.2+os161-2.0;./configure --nfp --disable-shared --disable-threads --disable-libmudflap --disable-libssp --target=mips-harvard-os161 --prefix=$PREFIX;make -j 8;make install;cd ..;
RUN echo "GCC installation complete"

# Build and install gdb

RUN cd /root/os161/src/gdb-6.6+os161-2.0;./configure --target=mips-harvard-os161 --disable-werror --prefix=$PREFIX;find . -name '*.info' | xargs touch;make;make install;cd ..;
RUN echo "GDB installation complete"

# Build and install sy161

RUN cd /root/os161/src/sys161-1.99.06;./configure --prefix=$PREFIX mipseb;make;make install;cd ..;
RUN echo "sys161 installation complete"

# build and install bmake
RUN cd /root/os161/src/bmake;./boot-strap --prefix=$PREFIX -m none;
RUN echo "Execute the above commands one by one to install bmake";
RUN echo "Most of the directory setup is done complete the rest following steps from bmake  installation from Jinghao Shi's blog http://jhshi.me/2013/12/15/os161-tool-chain-setup/index.html#.XyPJdHUzaV5"

VOLUME  /root



