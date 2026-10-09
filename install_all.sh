#!/usr/bin/env bash

# 全てのフォントをインストールするスクリプト
# Casks フォルダのファイル名から Cask 名を取得してインストールする
# 先に以下のコマンドを実行すること
#
# brew tap omonomo/tap
# brew trust omonomo/tap

cd "$(dirname "$0")/Casks" || exit 1

for rb in *.rb; do
  brew install --cask "${rb%.rb}"
done
