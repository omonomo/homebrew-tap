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
(the filename without the .rb extension is the Cask name).
