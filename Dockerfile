# コードを実行するコンテナイメージ
FROM python:3.8.1-alpine3.11

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
RUN ls
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/bin/ash", "/entrypoint.sh"]