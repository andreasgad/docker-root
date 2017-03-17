FROM ubuntu:trusty

ARG APT_PROXY_PORT=
COPY detect-apt-proxy.sh /root
RUN /root/detect-apt-proxy.sh ${APT_PROXY_PORT}

RUN apt-get -y update && apt-get -y install --no-install-recommends \
    git cmake libunittest++-dev libcurl4-openssl-dev ca-certificates \
    build-essential root-system libgsl0-dev \
    libroot-math-mathmore-dev libroot-math-physics-dev libroot-hist-dev \
    libroot-math-minuit-dev libroot-io-dev libroot-tree-dev libroot-hist-spectrum-dev \
    libroot-gui-dev libroot-net-dev libroot-graf3d-g3d-dev libroot-graf2d-gpad-dev \
    libroot-graf2d-postscript-dev libroot-tree-treeplayer-dev \
    && rm -rf /var/lib/apt/lists/*