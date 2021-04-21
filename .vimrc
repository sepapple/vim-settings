set nocompatible
filetype off
if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MY

endif
call plug#begin('~/.vim/plugged')
"導入するプラグインを列挙
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'itchyny/vim-cursorword'
Plug 'lambdalisue/gina.vim'
Plug 'tomlion/vim-solidity'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-scripts/taglist.vim'
Plug 'mattn/efm-langserver'
"fern-settings
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'LumaKernel/fern-mapping-fzf.vim'
" Plug 'lambdalisue/fern-git-status.vim'
" Plug 'lervag/vimtex'
" Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'aklt/plantuml-syntax'
"Markdown preview
Plug 'skanehira/preview-markdown.vim'

"vim-sl
Plug 'mattn/vim-sl'
"スニペットツール
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"括弧可読支援
" Plug 'andymass/vim-matchup'
"Lint-tool
" Plug 'dense-analysis/ale' 
"color scheme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'w0ng/vim-hybrid'
Plug 'cocopon/iceberg.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'sainnhe/forest-night'
Plug 'aereal/vim-colors-japanesque'

Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-syntastic/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tyru/open-browser.vim'
Plug 'tyru/caw.vim'
" Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Pkug 'mattn/vim-lsp-icons'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'lambdalisue/suda.vim'
Plug 'thinca/vim-quickrun'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" let g:highlightedyank_highlight_duration = 1000
" highlight HighlightedyankRegion cterm=reverse gui=reverse


"call vundle#end()
filetype plugin indent on
" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
"backspaceで消せるようにする
set backspace=indent,eol,start

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Ctr+nをTabにする
nnoremap <C-7> <C-i>
" inoremap <Tab> <C-n>
" inoremap <S-Tab> <C-p>

"Tabでインデント
nnoremap <Tab> >>
nnoremap <S-Tab> <<

"自動的に改行が入るのを無効化
set textwidth=0
set shiftround
set infercase
"自動インデント
set autoindent
"オートインデント
set smartindent

set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" キーワードにマッチした数を表示
set shortmess-=S
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap  <C-c><C-c> :<C-u>nohlsearch<cr><Esc>

" showbreaks
set showbreak=↪

"vimに色をつける
syntax on
" set t_Co=256
set background=dark
" forest-night settings
set termguicolors
colorscheme forest-night
let g:forest_night_enable_italic = 1

" colorscheme onedark
" colorscheme molokai
" colorscheme nord
" colorscheme gruvbox
" colorscheme dracula
" colorscheme hybrid
" colorscheme iceberg
" colorscheme gotham256

" tokyo-night settings
" set termguicolors
" let g:tokyonight_style = 'storm' 
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight

"スペースをトリガーにする
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
noremap <Leader>t :terminal<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>s :split<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GFiles<CR>

"キー入力
set ttimeoutlen=10

"airline-settings
let g:airline_extensions = ['branch','fzf','tabline','gina']
let g:airline_theme='forest_night'
" let g:airline_theme=deus'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


"入力モード時のカーソル移動
inoremap <C-j> <C-o>gj
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>


"tmux_navigator-setti:ngs
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <Leader>h :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader>j :TmuxNavigateDown<cr>
nnoremap <silent> <Leader>k :TmuxNavigateUp<cr>
nnoremap <silent> <Leader>l :TmuxNavigateRight<cr>
nnoremap <silent> <Leader>p :TmuxNavigatePrevious<cr>

"jキーを二度押しでESCキー
inoremap <silent> jj <Esc>
inoremap <silent> っj <ESC>

set clipboard+=unnamed


"setting caw.vim(先頭)
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)

" setting open-blowser.vim
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" vim-lsp
nnoremap <expr> <silent> <C-]> execute(':LspDefinition') =~ "not supported" ? "\<C-]>" : ":echo<cr>"

"settiag NERDTree
" nnoremap <C-n> :NERDTreeTabsToggle<CR>
nnoremap <C-n> :Fern . -drawer -toggle -reveal=% <CR>
" nnoremap <C-e> :NERDTreeFocusToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let NERDTreeShowHidden=1
" let g:nerdtree_tabs_open_on_console_startup=1
" let NERDTreeShowHidde = 1

"settings javascript
" let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_ngdoc = 1
" let g:javascript_plugin_flow = 1

function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

"Quickrun
if !exists("g:quickrun_config")
    let g:quickrun_config = {
     \    "_" : {
     \       "runner" : "job",
     \       "outputter" : "loclist",
     \       "outputter/loclist/into" : 1,
     \   },
     \    'tex': {
     \    'command': 'platex',
     \    'exec': ['%c -output-directory %s:h %s', 'dvipdfmx -o %s:r.pdf %s:r.dvi', 'open %s:r.pdf']
     \   },
    \    'plantuml': {
    \    "command": "plantuml",
    \    "exec": ["%c %s","open %s:r.png"]
    \   },
    \}
endif

" Latex保存時にコンパイル
" autocmd BufWritePost *.tex QuickRun 

"buffer all delete
function s:DeleteHiddenBuffers()    
    let tpbl=[]    
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')    
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')    
        silent execute 'bwipeout' buf    
    endfor    
endfunction    
command -nargs=0 DeleteHiddenBuffers call s:DeleteHiddenBuffers()

"my-glyph-lalette-settings
augroup my-glyph-palette
  autocmd! *
  autocmd FileType vaffle call glyph_palette#apply()
augroup END

"vim-matchup
let g:loaded_matchit = 1

"lsp-settings
let g:lsp_diagnostics_echo_cursor = 1
" let g:lsp_diagnostics_float_cursor = 1
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <C-]> <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <Leader><Leader>rn <plug>(lsp-rename)

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" augroup LspEFM
"     au!
"     autocmd User lsp_setup call lsp#register_server({
"   \ 'name': 'efm-langserver',
"   \ 'cmd': {server_info->['efm-langserver', '-c=/Users/sepa/.config/efm-langserver/config.yaml']},
"   \ 'whitelist': ['vim', 'eruby', 'markdown', 'yaml'],
"   \ })
" augroup END

let g:lsp_highlight_references_enbled = 1
" highlight lspReference ctermfg=green guifg=green ctermbg=lightblue guibg=lightblue
" highlight lspreference ctermfg=lightblue guifg=lightblue ctermbg=green guibg=green
" highlight lspreference ctermfg=lightblue guifg=lightblue ctermbg=red guibg=red
highlight lspreference ctermfg=red guifg=red ctermbg=lightblue guibg=lightblue

"terminal-settings
if has('terminal')
  tnoremap <silent><C-u> <C-\><C-N>
endif


function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
endfunction

"fern-settings
augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"fern-settings
let g:fern#renderer = "nerdfont"

"preview-markdown
let g:preview_markdown_vertical = 1

"2020   3月号
" let g:ale_completion_enabled = 1
" let g:ale_completion_tsserver_autoimport = 1

" augroup _ale_lsp_completion
"     au!
"     autocmd User asyncomplete_setup call asyncomplete#a
"     register_source(asyncomplete#sources#ale#get_source_options({
"                \ 'priority': 10,
"                \ }))
" augroup END

