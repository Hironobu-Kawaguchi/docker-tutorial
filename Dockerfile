FROM tensorflow/tensorflow:latest-gpu-jupyter
MAINTAINER Hironobu Kawguchi <20vr029p@rikkyo.ac.jp>

RUN apt update \
    && apt install -y sudo wget

# ライブラリ追加
RUN pip install -U pip \
    && pip install --upgrade \
    jupyterlab \
    && jupyter serverextension enable --py jupyterlab
