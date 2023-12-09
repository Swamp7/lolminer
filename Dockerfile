FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.79/lolMiner_v1.79_Lin64.tar.gz \
    && tar xvzf lolMiner_v1.79_Lin64.tar.gz \
    && rm lolMiner_v1.79_Lin64.tar.gz

WORKDIR /1.79

ENTRYPOINT ["./lolMiner"]
