FROM nvidia/cuda:10.1-runtime-ubuntu18.04

RUN apt-get update && \
    apt-get install -y wget xz-utils libgomp1 && \
    mkdir native_client && \
    cd native_client && \
    wget https://github.com/mozilla/DeepSpeech/releases/download/v0.9.0-alpha.8/native_client.amd64.cuda.linux.tar.xz && \
    tar xf native_client.amd64.cuda.linux.tar.xz && \
    rm native_client.amd64.cuda.linux.tar.xz

ENV PATH "$PATH:/native_client"