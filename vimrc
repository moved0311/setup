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
set expandtab     "tab = space
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

"編輯.vimrc
nmap <leader>e :e ~/.vimrc<CR>
"重新載入.vimrc
nmap <leader>s :source ~/.vimrc<CR>		

"close search highlight
map <leader>/ :nohl<CR>

" move window when split (shift + h,j,k,l)
nnoremap <S-h>  <C-w>h
nnoremap <S-l>  <C-w>l
nnoremap <S-j>  <C-w>j
nnoremap <S-k>  <C-w>k

"compiler code
autocmd BufRead *.html nmap <leader>c :w<CR>G:!google-chrome % & <CR><CR>
autocmd BufRead *.md nmap <leader>c :w<CR>G:!google-chrome % & <CR><CR>
autocmd BufRead *.py   nmap <leader>c :w<CR>G:r!python %<CR>
autocmd BufRead *.java nmap <leader>c :w<CR>G:r!javac %; java `basename % .java`<CR>
autocmd BufRead *.js   nmap <leader>c :w<CR>G:r!node % < input <CR>
"autocmd BufRead *.js   nmap <leader>c :w<CR>G:r!node % <CR>

"search word : crtl + f
nnoremap <C-f> viwy/<C-r>"<CR>


"}}}
"Plugin {{{

"vundle require
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.  " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"=================
"  color Scheme 
"=================
"colorscheme vgod
"colorscheme desert256v2
colorscheme evening
Plugin 'flazz/vim-colorschemes'

"press F8 change next scheme, shift-F8 prev scheme.
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'

"=================
"   NERDTree
"=================
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

"=================
"   lightline
"=================
Plugin 'itchyny/lightline.vim'
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
let g:lightline = {
	\'colorscheme': 'jellybeans',
	\ }

"=================
"     emmet
"=================
Plugin 'mattn/emmet-vim'

"=================
"    coc.nvim 
"=================
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plugin 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
" insert line when <CR> is press, when use {}, []
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"=================
"   prettier
"=================
" cd ~/.vim/bundle
" git clone https://github.com/prettier/vim-prettier
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"=====================
"  styled-components 
"=====================
Plugin 'styled-components/vim-styled-components'

"=====================
"    vim-jsx 
"=====================
Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
"=====================
"    closetag.vim 
"=====================
"Plugin 'alvan/vim-closetag'
""let g:closetag_filenames = '*.html, *.js, *.jsx'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"}}}
