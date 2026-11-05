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
(拡張子.rbを除いたファイル名が Cask 名 (font-フォント名) になります)。

## フォントの紹介ページのリンク

### 全角英数や半角カナが判別しやすい、文字間隔調整機能付き等幅フォント

- [Cyroit](https://omonomo.github.io/Cyroit/): Inconsolata + Circle M+ 1m + BIZ UDゴシック + NINJAL 変体仮名フォント + Nerd Fonts
- [Idroit](https://omonomo.github.io/Idroit/): Monoid + Cyroit
- [Jeroit](https://omonomo.github.io/Jeroit/): JetBrains Mono + Cyroit
- [Meroit](https://omonomo.github.io/Meroit/): Meslo LG + Hack + Cyroit
- [Roroit](https://omonomo.github.io/Roroit/): Roboto Mono + Noto Sans Mono + Cyroit
- [Soroit](https://omonomo.github.io/Soroit/): Source Code Pro + Hasklig + Cyroit
- [Ubroit](https://omonomo.github.io/Ubroit/): Ubuntu Mono + Cyroit
- [Viroit](https://omonomo.github.io/Viroit/): Victor Mono + Cyroit

### 全角英数や半角カナが判別しやすいプロポーショナルフォント

- [Awroit](https://omonomo.github.io/Awroit/): iA Writer Quattro + IBM Plex Mono + Cyroit

### 開発用途向けにカスタマイズした日本語等幅フォント

- [日本語フォント開発用途化計画](https://github.com/omonomo/JPMonoFonts)

### CJK等幅フォント用にサイズ調整したカラー絵文字

- [TwemojiTT](https://github.com/omonomo/TwemojiTT): Twemoji
- [NCemojiTT](https://github.com/omonomo/NCemojiTT): Noto Color Emoji
