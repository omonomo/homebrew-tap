# Homebrew-Tap

自作の合成、改変フォントを Homebrew でインストールできるようにしました。

## インストール方法

ターミナル上で

```
brew install --cask omonomo/tap/font-フォント名
```

または

```
brew tap omonomo/tap
brew install --cask font-フォント名
```

でインストールできます。  
`フォント名` はスペースを入れずに入力してください。

(例)
```
brew install --cask font-CyroitLooseBS
```

フォントは  
`~/Library/Fonts` (macOS)  
`~/.local/share/fonts` (Linux)  
にインストールされます。

インストールできるフォントについては `Casks` ディレクトリをご確認下さい。
