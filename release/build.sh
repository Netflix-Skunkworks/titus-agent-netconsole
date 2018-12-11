#!/bin/bash

cd /src
cp -r pkg titus-agent-netconsole-0.1
cd /src/titus-agent-netconsole-0.1

dh_make --yes --indep --createorig
mv /src/pkg/install debian/install
debuild -us -uc
