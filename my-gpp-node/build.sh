#!/bin/sh
version=1.0.0

mkdir /tmp/my-gpp-node-$version
cp -r * /tmp/my-gpp-node-$version
cd /tmp
tar cvfz my-gpp-node-$version.tar.gz my-gpp-node-$version
if [ $? -eq 0 ]; then
  cp my-gpp-node-$version.tar.gz ~/rpmbuild/SOURCES
fi
cd -
