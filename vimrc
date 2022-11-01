set fenc=utf-8
set autoread " 編集中のファイルが変更されたら自動で読み直す

set virtualedit=onemore  " 行末の1文字先までカーソルを移動できるように

set wildmode=list:longest " コマンドラインの補完


"#####表示設定#####
set display=lastline
set pumheight=10
set number "行番号を表示する
set t_Co=256     "powerline setup
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'dark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif              "endpowerline setup

set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント

let g:airline_left_sep = '»'     " unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'    "end

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

set completeopt=menuone,noinsert
" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
  
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索結果をハイライト
nnoremap <silent> <ESC><ESC> :nohlsearch<CR> " ESCキー連打でハイライトを消す

set cursorline      " 現在の行をハイライト
hi clear CursorLine " 上と合わせることで行番号のみハイライト

set showmatch " Show matching brackets.
set matchtime=1

" プラグイン関連
" NeoBundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'


call neobundle#end()

filetype plugin indent on
" https://qiita.com/koyopro/items/c473b3c2323501b7891a ←qiita
" https://github.com/Shougo/neobundle.vim.git←元のgit
