# README

- Ruby: 3.1.3
- Rails: ~> 7.0.4

## 動作確認用コマンド

1. `$ docker-compose build`
2. `$ docker-compose run web rails db:create`
3. `$ docker-compsoe up -d`
4. `$ docker-compose ps`

### コンテナ停止

`$ docker-compose stop`

### コンテナ停止 & 削除

`$ docker-compose down`

## その他

### docker-compose -> MySQL M1 Mac対応

`docker-compose.yml`のdbに記載されているplatformの記述は、M1 Mac以外の方は不要です。

```yml
platform: linux/x86_64
```

不要な方は削除してください。
