# コードを実行するコンテナイメージ
FROM python:3.8.1-alpine3.11

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
RUN apk update && apk add git
COPY src /src/

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/bin/ash", "/src/entrypoint.sh"]