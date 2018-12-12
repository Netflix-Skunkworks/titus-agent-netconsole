#!/bin/bash

cd /src

echo current directory:
pwd

echo current directory contents:
ls -la

echo TITUS_NETCONSOLE_VERSION: $TITUS_NETCONSOLE_VERSION
cp -r pkg titus-agent-netconsole-${TITUS_NETCONSOLE_VERSION}
cd /src/titus-agent-netconsole-${TITUS_NETCONSOLE_VERSION}

dh_make --yes --indep --createorig
cp /src/pkg/install debian/install
debuild -us -uc
