FROM ubuntu:16.04

RUN apt-get -y update && \
    apt-get -y install git g++ curl nano make unzip

COPY external /external

RUN apt-get -y update && \
    apt-get -y install pkg-config build-essential cmake \
                       libgtk2.0-dev libavcodec-dev \
                       libavformat-dev libswscale-dev \
                       python-dev python-numpy libtbb2 \
                       libtbb-dev libjpeg-dev libpng-dev \
                       libtiff-dev libjasper-dev libdc1394-22-dev

WORKDIR /opencv

# download, build and install opencv
RUN curl -k -o opencv-3.4.5.zip -L https://github.com/opencv/opencv/archive/3.4.5.zip && unzip opencv-3.4.5.zip

RUN mkdir build && cd build && cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local /opencv/opencv-3.4.5/

RUN cd /opencv/build/ && make -j $(nproc) && make install && ldconfig


CMD ["/bin/bash"]