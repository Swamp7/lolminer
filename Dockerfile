FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.94a/lolMiner_v1.94a_Lin64.tar.gz \
    && tar xvzf lolMiner_v1.94a_Lin64.tar.gz \
    && rm lolMiner_v1.94a_Lin64.tar.gz \
    && ln -s libnvidia-ml.so.1 /lib/x86_64-linux-gnu/libnvidia-ml.so

WORKDIR /1.94a

ENTRYPOINT ["./lolMiner"] 
