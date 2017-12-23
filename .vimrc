" jjでインサートモードを抜ける
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>
inoremap <silent> っｊ <ESC>

" ハイライトサーチ
set hlsearch

" 大文字小文字を区別しない
set ignorecase

" 検索をループしない
set nowrapscan

" 行番号を表示
set number

" 現在の行を強調表示
set cursorline

" ESC連打でハイライト解除
nmap <silent><ESC><ESC> :nohlsearch<CR><ESC>

" クリップボード共通化
set clipboard=unnamed,autoselect

" ノーマルモードで日本語オフ
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" 上下にスクロールの余裕を持たせる
set scrolloff=10

" 検索したときに中心に来るようにする
nmap n nzz
nmap N Nzz
nmap * * zz
nmap # #zz

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'
Plug 'shougo/vimproc.vim', {'build' : 'make'}
Plug 'keith/swift.vim'
Plug 'landaire/deoplete-swift'
call plug#end()

" OSごとに動作を変える
if has("mac")
noremap ; :
noremap : ;
endif
