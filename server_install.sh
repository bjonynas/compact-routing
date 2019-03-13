#!/bin/bash

# Download wandio
curl -O https://research.wand.net.nz/software/wandio/wandio-4.0.0.tar.gz
tar -xf wandio-4.0.0.tar.gz
rm wandio-4.0.0.tar.gz
mv wandio-4.0.0 wandio
cd wandio

# Needs /usr/local for libcurl
./configure CPPFLAGS='-I/usr/local/include -I/usr/local/share/doc/curl' LDFLAGS='-L/usr/local/lib -L/usr/local/share/doc/curl' --prefix='/home/2133815j/.apps'
export LD_LIBRARY_PATH="/home/2133815j/.apps/lib:$LD_LIBRARY_PATH"

# Make wandio
PREFIX='/home/2133815j/.apps' make
make install

# Download BGPStream
cd ..
curl -O http://bgpstream.caida.org/bundles/caidabgpstreamwebhomepage/dists/bgpstream-1.2.1.tar.gz
tar -xf bgpstream-1.2.1.tar.gz
rm bgpstream-1.2.1.tar.gz
mv bgpstream-1.2.1 bgpstream
cd bgpstream

# Needs /usr/local and wandiocat
./configure CPPFLAGS='-I/usr/local/include -I/home/2133815j/.apps/include' LDFLAGS='-L/usr/local/lib -L/home/2133815j/.apps/lib -L/home/2133815j/.apps/wandio/lib' --prefix='/home/2133815j/.apps'
export LD_LIBRARY_PATH="/home/2133815j/.apps/lib:$LD_LIBRARY_PATH"

# Make bgpstream
PREFIX='/home/2133815j/.apps' make
make install

#-------------------------------------------

pip install --global-option build_ext --global-option '--include-dir=/home/2133815j/.apps/include' --global-option '--library-dir=/home/2133815j/.apps/lib' pybgpstream --user
export LD_LIBRARY_PATH="/home/2133815j/.apps/lib/:$LD_LIBRARY_PATH"
