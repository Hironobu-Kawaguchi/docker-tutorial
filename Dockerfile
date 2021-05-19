FROM tensorflow/tensorflow:latest-gpu-jupyter
MAINTAINER Hironobu Kawguchi <20vr029p@rikkyo.ac.jp>

# sudo, mecab, wgetなどをインストール
RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y sudo wget mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file graphviz graphviz-dev

# mecab-ipadic-NEologd
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git ; exit 0
RUN cd mecab-ipadic-neologd && \
  ./bin/install-mecab-ipadic-neologd -n -u 1 -y

# ライブラリ追加
RUN pip install -U pip \
    && pip install --upgrade \
    gensim \
    ipadic \
    japanize-matplotlib \
    jupyterlab \
    mecab-python3 \
    networkx \
    pydot \
    pygraphviz \
    wordcloud \
    && jupyter serverextension enable --py jupyterlab
