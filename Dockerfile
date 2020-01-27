# コードを実行するコンテナイメージ
FROM python:3.8.1-alpine3.11

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

`/` of the container
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]