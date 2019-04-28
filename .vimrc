" 行を表示
set number
" エンコードをUTF-8に
set fileencoding=utf-8
" ハイライトサーチ
set hlsearch
" 検索で大文字小文字を区別しない
set ignorecase
" 検索をループしない
set nowrapscan
" jjでインサートモードを抜ける
inoremap <silent> jj <ESC>
" ESC連打でハイライト解除
nmap <silent><ESC><ESC> :nohlsearch<CR><ESC>
" クリップボード共通化
set clipboard=unnamed,autoselect
" 検索したときに中心に来るようにする
nmap n nzz
nmap N Nzz
nmap * * zz
nmap # #zz
" 上下にスクロールの余裕を持たせる
set scrolloff=5
" 外部で編集された時に自動的に読み込むようにする
set autoread
" vi互換をオフにする(カーソルキーでABCDが入力されないように)
set nocompatible
" 現在の行を強調表示
set cursorline

" OSごとに動作を変える
if has("mac")
noremap ; :
noremap : ;
endif

