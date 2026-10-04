#!/usr/bin/env bash

# 全てのフォントをインストールするスクリプト
# Casks フォルダのファイル名から Cask 名を取得してインストールする

cd "$(dirname "$0")/Casks" || exit 1

for rb in *.rb; do
  brew install --cask "${rb%.rb}"
done
