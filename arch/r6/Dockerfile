FROM pritunl/archlinux

ENV BUILD_URL="https://aur.archlinux.org/cgit/aur.git/snapshot/root.tar.gz"


RUN pacman -S sudo base-devel git --noconfirm --needed
RUN echo "nobody ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# RUN cd /tmp \
#     && git clone https://aur.archlinux.org/package-query.git --depth=1 \
#     && chown -R nobody: package-query \
#     && cd package-query \
#     && su -c "makepkg -sri --force --syncdeps --noconfirm" -s /bin/bash nobody \
#     && cd .. \
#     && git clone https://aur.archlinux.org/yaourt.git --depth=1\
#     && chown -R nobody: yaourt \
#     && cd yaourt \
#     && su -c "makepkg -sri --force --syncdeps --noconfirm" -s /bin/bash nobody



# RUN curl ${BUILD_URL} \
#     | tar -xzC /tmp/
# RUN chown -R nobody: /tmp/root
#RUN su -c "cd /tmp&& yaourt --noconfirm -Sb root" -s /bin/bash nobody
# RUN useradd -m compile
# RUN echo "sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# USER compile


# RUN curl ${BUILD_URL} \
#    | tar -xzC /home/compile


# USER root

#RUN cd /home/compile/root \
#    && makepkg -src --force --syncdeps --noconfirm


# RUN yum install -y libX11 libXpm libXft libXext libSM curl tar \
#     && yum clean all


# ENV ROOT_TAR="root_v6.06.08.Linux-centos7-x86_64-gcc4.8.tar.gz" 
# ENV ROOT_DL="https://root.cern.ch/download/$ROOT_TAR" 
# ENV ROOTSYS="/cern/root/" 

# ENV PATH="$ROOTSYS/bin:$PATH" 
# ENV LD_LIBRARY_PATH="$ROOTSYS/lib:$LD_LIBRARY_PATH" 

# RUN mkdir /cern \
#   && curl ${ROOT_DL} \
#   | tar -xzC /cern