#!/bin/bash

cd /src
cp -r pkg titus-agent-netconsole-0.${BUILD_NUMBER}
cd /src/titus-agent-netconsole-0.${BUILD_NUMBER}

dh_make --yes --indep --createorig
mv /src/pkg/install debian/install
debuild -us -uc
