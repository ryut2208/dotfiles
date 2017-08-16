" jjでインサートモードを抜ける
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>
inoremap <silent> っｊ <ESC>

" ハイライトサーチ
set hlsearch

" コロンセミコロン入れ変え
noremap ; :
noremap : ;

" 行番号を表示
set number

" 現在の行を強調表示
set cursorline

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" クリップボード共通化
set clipboard=unnamed,autoselect

" 検索で大文字小文字を区別しない
set ignorecase

" ノーマルモードで日本語オフ
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
