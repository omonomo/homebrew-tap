<table>
	<thead>
    	<tr>
      		<th style="text-align:center"><a href="README.md">日本語</a></th>
      		<th style="text-align:center">English</th>
    	</tr>
  	</thead>
</table>

# Homebrew-Tap

I have made it possible to install custom synthesized and modified fonts via Homebrew.

## Basic Installation Method

In the terminal,

```
brew install --cask omonomo/tap/font-[font-name]
```

you can install them.  
Please use lowercase for `[font-name]` and replace spaces with hyphens.

(Example)
```
brew install --cask omonomo/tap/font-cyroitloose-bs
```

By default, fonts are installed in  
`~/Library/Fonts` (macOS)  
`~/.local/share/fonts` (Linux)  

Please check the `Casks` directory for available fonts  
(the filename without the .rb extension is the Cask name (font-[font-name])).

## Link to the fonts introduction page

### Monospaced fonts with character spacing adjustment features, etc., that make it easy to distinguish full-width alphanumerics and half-width kana

- [Cyroit](https://omonomo.github.io/Cyroit/): Inconsolata + Circle M+ 1m + BIZ UD Gothic + NINJAL Hentaigana Font + Nerd Fonts
- [Idroit](https://omonomo.github.io/Idroit/): Monoid + Cyroit
- [Jeroit](https://omonomo.github.io/Jeroit/): JetBrains Mono + Cyroit
- [Meroit](https://omonomo.github.io/Meroit/): Meslo LG + Hack + Cyroit
- [Roroit](https://omonomo.github.io/Roroit/): Roboto Mono + Noto Sans Mono + Cyroit
- [Soroit](https://omonomo.github.io/Soroit/): Source Code Pro + Hasklig + Cyroit
- [Ubroit](https://omonomo.github.io/Ubroit/): Ubuntu Mono + Cyroit
- [Viroit](https://omonomo.github.io/Viroit/): Victor Mono + Cyroit

### Proportional fonts that make it easy to distinguish full-width alphanumerics and half-width kana

- [Awroit](https://omonomo.github.io/Awroit/): iA Writer Quattro + IBM Plex Mono + Cyroit

### Japanese monospaced fonts customized for development use

- [Japanese Font Development Project](https://github.com/omonomo/JPMonoFonts)

### Color emoji fonts sized for CJK monospace fonts

- [TwemojiTT](https://github.com/omonomo/TwemojiTT): Twemoji
- [NCemojiTT](https://github.com/omonomo/NCemojiTT): Noto Color Emoji
