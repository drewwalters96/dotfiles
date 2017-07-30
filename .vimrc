" .vimrc

" Set line numbers
set number

" set syntax highlighting 
syntax on
colorscheme darcula

" Tab key == 4 spaces
set expandtab 
set shiftwidth=4 
set smarttab
set softtabstop=0 
set tabstop=8
execute pathogen#infect()
call pathogen#helptags()
