# Docker_local_rails

Rails 開発環境構築用の Dockerfile です。

## 使い方

### 1.image ファイル作成<br>

```
$ sh ./makeimage.sh
```

<br>
<br>

### 2.image ファイルが作成できたことを確認<br>

```
$ docker images
```

rails_image という image ファイルが作成されているはず。
<br>
<br>

### 3.image ファイルからコンテナを作成<br>

```
$ docker run -it  --name #{NAME} -p 3000:3000  rails_image  /bin/bash
```

#{NAME}はコンテナの名前。好きな名前をつける。
コンテナを作成するとコンテナ内に入った状態になる。
<br>
<br>

### 4.rails アプリを作成する<br>

```
$ cd work
$ rails new #{APP_NAME}
```

作業用ディレクトリとして work を用意してあるので、
そのなかで rails アプリを作成する

## image ファイルに入っているもの

- Ruby (version 2.7.0)
- Rails (version 6.0.0)
- vim
- git

※ node および yarn も rails の導入に必要なので入っている
