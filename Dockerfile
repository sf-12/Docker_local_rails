# 元になるdocker imageを指定
FROM ruby:2.7.2-alpine3.12

# 環境変数を設定
# INSTALL_PACKAGES  : installするもの
# BUNDLER_VERSION   : version不一致によるbundle install エラーを回避
# APP_ROOT_DIR      : 作業ディレクトリ
# LANG              : rails consoleの中で日本語入力を設定
# TZ                : タイムゾーンを日本時間に設定
ENV INSTALL_PACKAGES="bash gcc g++ make nodejs vim yarn libxslt-dev libxml2-dev libc-dev linux-headers mysql-client mysql-dev build-base" \
    BUNDLER_VERSION="2.1.4" \
    APP_ROOT_DIR="/myApp" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo

# 作業ディレクトリを作成
# RUN mkdir APP_ROOT_DIR

# 作業ディレクトリを指定(指定ディレクトリが存在しなければ生成される)
WORKDIR $APP_ROOT_DIR

# ホストからgemfileをコピー
COPY Gemfile $APP_ROOT_DIR/Gemfile
COPY Gemfile.lock $APP_ROOT_DIR/Gemfile.lock

# 各種インストール
RUN apk update && \
    apk upgrade && \
    apk add --no-cache  ${INSTALL_PACKAGES} && \
    gem install bundler
    # gem install bundler && \
#     bundle install

# ホストからWebアプリをコピー

# add alias
# RUN echo 'alias ll=ls -la' >> ~/.bashrc
