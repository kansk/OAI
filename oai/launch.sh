#!/bin/sh
cd /tmp
mkdir oai
cd oai
mkdir conf
cd /root/openairinterface5g/oai
cp conf/* /tmp/oai/conf/
docker-compose up
