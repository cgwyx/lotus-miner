FROM  ubuntu:18.04


RUN git clone https://github.com/shannon-6block/lotus-miner.git  &&\
        cd lotus-miner &&\
        ./script/install.sh


WORKDIR /lotus-miner

CMD ["/bin/sh"]