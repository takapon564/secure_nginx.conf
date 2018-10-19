# secure_nginx.conf

## アプリケーションのフロントに置くことで、通信をhttps化させるためのnginx.confの設定です

1.cerbotのインストール
 $ sudo yum install epel-release　\
 $ sudo yum install certbot

2.証明書の取得
 $ certbot certonly --webroot -w /usr/share/nginx/html -d \
   (証明書を取得するドメイン)

  上記の手順を行うとメールアドレスを聞かれるので入力

3.設定ファイルの変更
　証明書の取得後、secure_nginx.confファイルの内容を/etc/nginx/nginx.confに追記し
  nginxを再起動
  これでバックエンドに配置しているアプリケーションに対してsecureな通信を行える。
