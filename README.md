# README

## 起動方法

```bash
$ docker-compose up
```
DBとアプリケーションサーバーが起動するので、Webブラウザから以下のURLを開く

http://localhost:3000/

## DBの初期化

```bash
$ docker-compose run web rails db:migrate
```
