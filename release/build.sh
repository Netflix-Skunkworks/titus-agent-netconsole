#!/bin/bash

cd /src
cp -r pkg titus-agent-netconsole-0.${BUILD_NUMBER}
cd /src/titus-agent-netconsole-0.${BUILD_NUMBER}

dh_make --yes --indep --createorig
cp /src/pkg/install debian/install
cp /src/pkg/postinst debian/postinst
debuild -us -uc
