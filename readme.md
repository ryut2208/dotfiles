## シンボリックリンクの作り方
- mac 
```
$ ln -s オリジナルの絶対パス シンボリックリンクを置きたいディレクトリ
```

- windows
```
mklink C:\Users\...\.vimrc C:\Users\...\dotfiles\.vimrc
mklink 作成先 元ファイル
```
Macと逆なので注意

## VSCodeの設定ファイル
`settings.json`がそのファイル。
シンボリックリンクを作るディレクトリは
- Windows
```
C:\Users\%USERNAME%\AppData\Roaming\Code\User
```
- Mac
```
$HOME/Library/Application Support/Code/User/settings.json
```
