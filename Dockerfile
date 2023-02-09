FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root
RUN apt-get update && apt-get install -y \
      ninja-build \
      gettext \
      libtool \
      libtool-bin \
      autoconf \
      automake \
      cmake \
      g++ \
      pkg-config \
      unzip \
      curl \
      doxygen \
      git \
      nodejs \
      npm

RUN git clone https://github.com/neovim/neovim.git
    
WORKDIR /root/neovim

RUN git checkout tags/v0.8.3 \
  && make CMAKE_BUILD_TYPE=RelWithDebInfo \
  && make install

RUN git clone --depth 1 https://github.com/Derek-Xiang/Tool_Configs.git /root/.config/

RUN rm -rf /root/neovim

