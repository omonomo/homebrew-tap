<table>
	<thead>
    	<tr>
      		<th style="text-align:center">日本語</th>
      		<th style="text-align:center"><a href="README_en.md">English</a></th>
    	</tr>
  	</thead>
</table>

# Homebrew-Tap

自作の合成、改変フォントを Homebrew でインストールできるようにしました。

## 基本的なインストール方法

ターミナル上で

```
brew install --cask omonomo/tap/font-フォント名
```

でインストールできます。  
`フォント名` は小文字で、スペースはハイフンに置き換えてください。

(例)
```
brew install --cask omonomo/tap/font-cyroitloose-bs
```

デフォルト設定の場合、フォントは  
`~/Library/Fonts` (macOS)  
`~/.local/share/fonts` (Linux)  
にインストールされます。

インストールできるフォントについては `Casks` ディレクトリをご確認下さい  
(拡張子.rbを除いたファイル名が Cask 名になります)。
