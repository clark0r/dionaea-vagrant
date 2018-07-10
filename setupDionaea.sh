#!/bin/bash
apt update;
apt -y upgrade;
apt -y dist-upgrade;
apt -y install git build-essential cmake check cython3 libcurl4-openssl-dev libemu-dev libev-dev libglib2.0-dev libloudmouth1-dev libnetfilter-queue-dev libnl-3-dev libpcap-dev libssl-dev libtool libudns-dev python3 python3-dev python3-bson python3-yaml fonts-liberation dos2unix;

git clone https://github.com/DinoTools/dionaea.git;
mkdir build;
cd build;
cmake -DCMAKE_INSTALL_PREFIX:PATH=/opt/dionaea ../dionaea/;
make;
make install;