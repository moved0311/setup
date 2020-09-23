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
set hlsearch		"搜尋顯示
set ic				"case insensitive 不區分大小寫
set history=50		"紀錄50個指令
set nocompatible	"和舊版vi不相容
set expandtab       "空白取代tab
set tabstop=4
set shiftwidth=4
"}}}
"Encoding {{{
set encoding=utf-8
set fileencoding=utf-8
"}}}
"GUI {{{
set background=dark
colorscheme vgod
set nu				"show line number
set scrolloff=5		"preserve 5 underline

"split
set splitbelow
set splitright
set cursorline      "目前行數底線
"}}}
"Keymap {{{
let mapleader=","

"編輯.vimrc
nmap <leader>e :e ~/.vimrc<CR>
"重新載入.vimrc
nmap <leader>s :source ~/.vimrc<CR>		

"close search highlight
map <leader>/ :nohl<CR>

imap jj <ESC>

"compiler code
autocmd BufRead *.html nmap <leader>c :w<CR>G:!google-chrome % & <CR><CR>
autocmd BufRead *.md nmap <leader>c :w<CR>G:!google-chrome % & <CR><CR>
autocmd BufRead *.py   nmap <leader>c :w<CR>G:r!python %<CR>`.
autocmd BufRead *.java nmap <leader>c :w<CR>G:r!javac %; java `basename % .java`<CR>
"}}}
"Plugin {{{

"vundle require
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"NERDTree
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

"lightline
Plugin 'itchyny/lightline.vim'
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
let g:lightline = {
	\'colorscheme': 'jellybeans',
	\ }

"emmet
Plugin 'mattn/emmet-vim'

"tmux
"autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
"autocmd VimLeave * call system("tmux rename-window bash")
"autocmd BufEnter * let &titlestring = ' ' . expand("%:t")          
"set title

"filetype plugin indent on

"IndentLine
"Plugin 'Yggdroot/indentLine'
"let g:indentLine_color_term = 243
"let g:indentLine_leadingSpaceChar = '·'
"let g:indentLine_leadingSpaceEnabled = 1

"}}}

