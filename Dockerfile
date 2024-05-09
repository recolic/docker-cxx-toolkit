FROM archlinux

MAINTAINER root@recolic.net

RUN pacman -Syu --noconfirm gcc clang make cmake git lzop

#### Intel-C++ installer. Disabled.
##  # Build this package with another machine, and install it into docker.
##  # COPY ./makepkg /usr/bin/makepkg
##  # RUN git clone https://aur.archlinux.org/intel-parallel-studio-xe.git && cd intel-parallel-studio-xe && makepkg -i
##  
##  RUN sed -i 's/#RemoteFileSigLevel = Required/RemoteFileSigLevel = Optional/g' /etc/pacman.conf
##  RUN pacman -U --noconfirm https://cnm.cool/res/intel-common-libs-2019.3.199-3-x86_64.pkg.tar.lzo https://cnm.cool/res/intel-openmp-2019.3.199-3-x86_64.pkg.tar.lzo https://cnm.cool/res/intel-compiler-base-2019.3.199-3-x86_64.pkg.tar.lzo
##  COPY INTEL_LICENSE_UCB_S4ZD-3DZ7HJTN.lic /opt/intel/licenses/INTEL_LICENSE_UCB_S4ZD-3DZ7HJTN.lic
##  
##  ENV PATH="/opt/intel/bin/:${PATH}"
##  # RUN echo 'export PATH=$PATH:/opt/intel/bin/' >> /root/.bashrc
##  
##  RUN icpc --version; g++ --version; clang++ --version

RUN g++ --version; clang++ --version

