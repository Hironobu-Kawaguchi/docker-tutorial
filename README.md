# docker-tutorial

## Tutorial

### Dockerコンテナ起動(anaconda3)

``` bash
docker run -it continuumio/anaconda3:2021.04 /bin/bash

exit
```

### Dockerでjupyter notebook

#### 起動
``` bash
docker run -it -p 9xxx:8888 continuumio/anaconda3:2021.04 jupyter notebook --ip 0.0.0.0 --allow-root --no-browser
```
9xxx は外部から接続するポート番号

?token= で表示されるトークンをコピーしておく

#### ブラウザで接続
http://xxx.xxx.xxx.xxx:9xxx/ (jupyter notebook)

http://xxx.xxx.xxx.xxx:9xxx/lab (jupyter lab)

Password or token に先ほどのトークンを入力し、log in

#### 終了
ブラウザでquitまたはターミナルでCtrl+Cで終了


### Dockerfile から build

``` bash
docker build -t abc:xyz .
```
abc:xyz イメージ名:タグ名


### DockerでGPU利用、フォルダをマウント
``` bash
docker run -it --rm --gpus '"device=n"' -v $HOME:/tf/home -p 9xxx:8888  abc:xyz
```


### docker環境に入る
``` bash
docker exec -it {container-name} bash
```

## 参考リンク

### Docker ドキュメント日本語化プロジェクト
https://docs.docker.jp/

### Docker Hub
https://hub.docker.com/

