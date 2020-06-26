FROM  ubuntu:18.04

RUN apt-get update -y &&\
    apt-get install curl git -y


RUN git clone https://github.com/cgwyx/lotus-miner.git  &&\
    cd lotus-miner &&\
    ./script/install.sh


WORKDIR /lotus-miner

CMD ["/bin/sh"]
