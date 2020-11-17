# Docker_local_rails

Rails 開発環境構築用の Dockerfile です。<br>
Docker 学習中のため、随時更新予定。<br>

## 使い方

### 1.image ファイル作成

```
$ sh ./makeimage.sh
```
<br>

### 2.image ファイルが作成できたことを確認

```
$ docker images
```

rails_image という image ファイルが作成されているはず。<br>
<br>

### 3.image ファイルからコンテナを作成

```
$ docker run -it --name #{NAME} -p 3000:3000 rails_image /bin/bash
```

#{NAME}はコンテナの名前。好きな名前をつける。<br>
コンテナを作成するとコンテナ内に入った状態になる。<br>
<br>

### 4.rails アプリを作成する

```
$ cd work
$ rails new #{APP_NAME}
```

作業用ディレクトリとして work を用意してあるので、
そのなかで rails アプリを作成する<br>
<br>

## image ファイルに入っているもの<br>

- Ruby (version 2.7.0)
- Rails (version 6.0.0)
- Vim
- Git

※ node および yarn も Rails の導入に必要なので入っている<br>
<br>

## その他

### ブラウザ上に表示したい時
rails sにオプションをつけて実行<br>

```
$ rails s -b 0.0.0.0
```
<br>
ブラウザのURLには以下を指定<br>

```
http://localhost:3000/
```
