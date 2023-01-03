# README

- Ruby: 3.1.3
- Rails: ~> 7.0.4

## 動作確認用コマンド

1. RailsアプリのDockerイメージビルド  
   `$ docker-compose build`
2. Dockerコンテナ起動  
   `$ docker-compsoe up -d`
3. コンテナの起動状況確認  
   `$ docker-compose ps`
4. DB作成とマイグレーション（初回のみ）  
   `$ docker exec -it web bundle exec rails db:create`  
   `$ docker exec -it web bundle exec rails db:migrate`  

以上コマンドを実行後、[http://localhost:3000/users](http://localhost:3000/users)にブラウザからアクセスしてもらうと、起動したRailsアプリが確認していただけます。

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
