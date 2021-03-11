"set number
set nu rnu
syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"autocmd vimenter * NERDTree


if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
            endif

set laststatus=2 
set guifont=Monospace\ 10

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
"Plug 'klen/python-mode'
Plug 'rust-lang/rust.vim'
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
"Plug 'preservim/nerdtree'
call plug#end()

colorscheme molokai
