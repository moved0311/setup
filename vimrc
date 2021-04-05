"startup {{{

filetype indent plugin on
"vim fold
augroup ft_vim
au!
au FileType vim setlocal foldmethod=marker
augroup END

"}}}
"General {{{
syntax on
set hlsearch		  
set ic				    "case insensitive 
set history=50		
set nocompatible	
set expandtab     
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
"}}}
"Encoding {{{
set encoding=utf-8
set fileencoding=utf-8
"}}}
"GUI {{{
set nu				      "show line number
set relativenumber  "show relative line number
set scrolloff=5		  "preserve 5 underline

"split
set splitbelow
set splitright
set cursorline      
"}}}
"Keymap {{{
let mapleader=","

inoremap <Nul> <TAB>

"edit .vimrc
nmap <leader>e :e ~/.vimrc<CR>
"reload .vimrc
nmap <leader>s :source ~/.vimrc<CR>

"search word : crtl + f
nnoremap <C-f> viwy/<C-r>"<CR>
"close search highlight
map <leader>/ :nohl<CR>

"set paste / set nopaste
nnoremap <leader>p :set invpaste paste?<CR>

" move window when split (shift + h,j,k,l)
nnoremap <S-h>  <C-w>h
nnoremap <S-l>  <C-w>l
nnoremap <S-j>  <C-w>j
nnoremap <S-k>  <C-w>k

"compiler code
autocmd BufRead *.html nmap <leader>c :w<CR>G:!google-chrome % & <CR><CR>
autocmd BufRead *.md   nmap <leader>c :w<CR>G:!google-chrome % & <CR><CR>
autocmd BufRead *.py   nmap <leader>c :w<CR>G:r!python %<CR>
autocmd BufRead *.java nmap <leader>c :w<CR>G:r!javac %; java `basename % .java`<CR>
autocmd BufRead *.js   nmap <leader>c :w<CR>G:r!node % <CR>
autocmd BufRead *.c    nmap <leader>c :w<CR> :!clear; make %<<CR>  G:! ./%<<CR>

"toggle line number
nnoremap <leader>nu :set relativenumber! nu!<CR>


"}}}
"Plugin {{{
call plug#begin('~/.vim/plugged')

"=================
"  color Scheme 
"=================
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'mhartington/oceanic-next'

colorscheme evening

"press F8 change next scheme, shift-F8 prev scheme.
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'

"=================
"   NERDTree
"=================
Plug 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

"=================
"    airline 
"=================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized_flood'
let laststatus=2

"=================
"     emmet
"=================
Plug 'mattn/emmet-vim'

"=================
"    coc.nvim 
"=================
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-eslint'
  \ ]

nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>

"=====================
"    vim-jsx 
"=====================
Plug 'pangloss/vim-javascript'

"=====================
"    close tag 
"=====================
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.js, *.tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_close_shortcut = '<leader>>'

"=====================
"    indentLine 
"=====================
Plug 'Yggdroot/indentLine'
set listchars=tab:·\ ,trail:·
set list
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_enabled = 0

"=====================
"   vim markdown 
"=====================
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'rtp': 'after'}
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:instant_markdown_mathjax = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_slow = 1
nmap <leader>mp :InstantMarkdownPreview<CR>


" Initialize plugin system
call plug#end()
"}}}
