## Pre-install
nodejs
> sudo apt-get install nodejs

yarn
> sudo apt install yarn

## Install
1. ./install.sh
2. open vim 
3. :PlugInstall

## Key Binding
`<leader>` = `,`
* Search

|Key| Function||
|--|--|--|
|\<leader\> e| edit .vimrc|| 
|\<leader\> s| reload .vimrc||
|ctrl + f | find word in current cursor| ctrl + n (next), ctrl + p (previous)|
|\<leader\> / | close search highlight||
|\<leader\> c|compile code||
|\<leader\> p| toggle set paste||
|\<leader\> nu| toggle line number||

* Plugin

|Key| Plugin||
|--|--|--|
|F2| toggle NERDTreeToggle|
|\<leader\> gd| go to the function definition|
|ctrl n| open autocomplete| ctrl + n (next), ctrl + p(previous)|

## Reference:
* package manager
  * [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
  * [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
