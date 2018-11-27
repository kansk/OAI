# Docker Setup - Automated Scripts Installation
ENB and EPC entities can be a single container, however the logical scalable architecture perspective, it is better to be single EPC and many ENB containers.

## Required Software
> $ docker --version

> Docker version 18.09.0, build 4d60db4

> $ docker-compose --version

> docker-compose version 1.23.1, build b02f1306

## Note:
While executing the eNB/EPC if there is a issue like gtp not found. please follow the below mentioned steps. This happens only in 
Version of Ubuntu server 16.04, upto kernel version 14.10. The lowlatency kernel can be found by searching the kernel module gtp.ko that is required to execute the gateway module. 

## if the above is successful, type in the below command and check for gtp and udp_tunnel displayed as below
> $ lsmod | grep gtp  #< Lists more information about gtp and related udp tunnel can be obtained:>

> gtp 28672 0

> udp_tunnel 16384 1 gtp

## Please following the steps for Openairinterface5g (EPC & ENB)

> $ git clone https://github.com/kansk/openairinterface5g.git

> $ cd /tmp

> $ mkdir oai

> $ cd oai

> $ mkdir conf

> $ cd /root/openairinterface5g/oai

> $ cp conf/* /tmp/oai/conf/

> $ docker-compose up 

## After few seconds, Rx/Tx Lights in the B200 should glow.

## In any changes for the IP address in the configuration files mentioned below (eNB, EPC) and follow the above procedure

> /tmp/oai/conf/mme.conf

> /tmp/oai/conf/spgw.conf

> /tmp/oai/conf/enb.10MHz.b200 and

> /openairinterface5g/oai/ vi docker-compose.yml ( line 20 : ipv4_address and line 37 : ipv4_address )
