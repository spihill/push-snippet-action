# コードを実行するコンテナイメージ
FROM python:3.8.1-alpine3.11

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
RUN apk update && apk add git
COPY make_cpp_json.py /make_cpp_json.py
COPY resolve_includes.py /resolve_includes.py
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/bin/ash", "/entrypoint.sh"]