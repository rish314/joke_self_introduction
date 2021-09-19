#!/bin/bash
# パイプやサブシェルで実行したコマンドが1つでもエラーになったら直ちにシェルを終了する
set -e

# Rails に対応したファイル server.pid が存在しているかもしれないので削除する。
rm -f /myapp/tmp/pids/server.pid

# コンテナーのプロセスを実行する。（Dockerfile 内の CMD に設定されているもの。）
exec "$@"
