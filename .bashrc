# vimrcの編集
alias vimrc='vim ~/.vimrc'
source $HOME/.bashrc_adb_aliases

# histroy短縮
alias h='history'
alias hg='history | grep'
# phpサーバーを起動する
alias runphp='php -S localhost:8080'
# asciidocのコンパイル
alias adoc='asciidoctor -r asciidoctor-pdf -b pdf'
alias adocPDF='asciidoctor -r asciidoctor-pdf -b pdf'
alias adocHTML='asciidoctor'
# lsの拡張
alias ls='ls -FG'
alias ll='ls -al'
# sourceの短縮
alias src='source'
# diffを良い感じにする
alias diff='diff -drBw'
# bashrcを編集する
alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias bashrc_adb='vim ~/.bashrc_adb_aliases && source ~/.bashrc'
# gitconfig.aliasを編集する
alias gitalias='vim ~/.gitconfig.alias'
# bash_profileを編集する
alias bash_profile='vim ~/.bash_profile && source ~/.bash_profile'
alias bashprofile='vim ~/.bash_profile && source ~/.bash_profile'
# apkの署名を確認する
alias keystore='keytool -list -printcert -jarfile'
# 打ち間違え防止
alias quit='exit'

# plantUMLのサイズを変更する
export PLANTUML_LIMIT_SIZE=8192
# 現在のディレクトリを開く
alias open='open .'
# CPUを調べる
alias cpu='sysctl machdep.cpu.brand_string'

# PDFの差分を取得する
function diffpdf() {
    if [ $# -eq 3 ]; then
	diff-pdf --output-diff=$1.pdf $2 $3
    else
	echo "出力ファイル名, 入力1, 入力2で引数を指定してください"
    fi
}
alias diffpdf=diffpdf

# javaREPLを実行する
alias javarepl='java -jar ~/javarepl.jar'

# gitの補完を使えるようにする
source ~/git-completion.bash

# bash起動時にIMEをオフにする
osascript -e 'tell application "System Events" to key code 102'
