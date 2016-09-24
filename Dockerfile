FROM ubuntu:xenial
RUN apt-get -y update && apt-get -y install --no-install-recommends \
    git dpkg-dev make clang binutils libx11-dev libxpm-dev \
    libxft-dev libxext-dev \
    gfortran libssl-dev libpcre3-dev \
    xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
    libmysqlclient-dev libfftw3-dev \
    graphviz-dev libavahi-compat-libdnssd-dev \
    libldap2-dev python-dev libxml2-dev libkrb5-dev \
    libgsl0-dev libqt4-dev cmake \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --branch v6-06-08 http://root.cern.ch/git/root.git root6 --depth 1\
    && cd root6 \
    && mkdir _build \
    && cd _build \
    && cmake .. -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++\
    && cmake --build . \
    && cmake --build . --target install \
    && rm -rf /root6