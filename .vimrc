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
" シンタックスハイライトを有効にする
syntax on
" camelcasemotionを便利にする
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
" yankの仕様をs-dとs-cに合わせる
nnoremap Y y$
" numberとrelativenumberの切り替え
nnoremap <F3> :<C-u>setlocal relativenumber!<CR>

" カーソルを縦棒に変更する
if has('vim_starting')
  " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_SI .= "\e[6 q"
  " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_EI .= "\e[2 q"
  " 置換モード時に非点滅の下線タイプのカーソル
  let &t_SR .= "\e[4 q"
endif

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'vim-scripts/camelcasemotion'
call plug#end()
