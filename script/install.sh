#!/bin/bash

rm -rf lotus-miner.tar.gz cmd
wget https://github.com/shannon-6block/lotus-miner/releases/download/interop.6.8.1/lotus-miner.tar.gz
mkdir cmd
tar zxvf lotus-miner.tar.gz -C cmd/
cp cmd/* /usr/local/bin/

apt update
apt install -y mesa-opencl-icd ocl-icd-opencl-dev ntpdate ubuntu-drivers-common

# time adjust
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ntpdate ntp.aliyun.com
