FROM cern/cc7-base

RUN yum install -y libX11 libXpm libXft libXext libSM curl tar \
    && yum clean all


ENV ROOT_TAR="root_v6.06.08.Linux-centos7-x86_64-gcc4.8.tar.gz" 
ENV ROOT_DL="https://root.cern.ch/download/$ROOT_TAR" 
ENV ROOTSYS="/cern/root/" 

ENV PATH="$ROOTSYS/bin:$PATH" 
ENV LD_LIBRARY_PATH="$ROOTSYS/lib:$LD_LIBRARY_PATH" 

RUN mkdir /cern \
  && curl ${ROOT_DL} \
  | tar -xzC /cern