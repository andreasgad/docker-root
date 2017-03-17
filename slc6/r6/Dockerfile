FROM cern/slc6-base

ENV ROOT_VERSION=6.06.08
ENV ROOT_TAR="root_v${ROOT_VERSION}.source.tar.gz" 
ENV ROOT_DL="https://root.cern.ch/download/$ROOT_TAR" 
ENV ROOT_BUILD_DIR=/tmp/root-${ROOT_VERSION} 

RUN yum install -y sl-release-scl \
    && yum install -y git cmake binutils \
    libX11-devel libXpm-devel libXft-devel libXext-devel gsl-static curl tar \
     devtoolset-4-gcc-c++ python27 \
    && yum clean all

RUN bash -c "source scl_source enable python27 devtoolset-4\
    	    && curl ${ROOT_DL} | tar -xzC /tmp/ \
    	    && mkdir ${ROOT_BUILD_DIR}/_build \
	    && cd ${ROOT_BUILD_DIR}/_build \
	    && cmake .. -Dmathmore=on -Dhttp=on \
	    && make \
	    && make -C ${ROOT_BUILD_DIR}/_build install \
	    && rm -rf ${ROOT_BUILD_DIR}"