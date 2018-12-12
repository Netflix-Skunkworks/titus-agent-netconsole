#!/bin/bash

cd /src
cp -r pkg titus-agent-netconsole-${TITUS_NETCONSOLE_VERSION}
cd /src/titus-agent-netconsole-${TITUS_NETCONSOLE_VERSION}

dh_make --yes --indep --createorig
cp /src/pkg/install debian/install
cp /src/pkg/postinst debian/postinst
debuild -us -uc
