" .vimrc

" Line numbers
set number

" For tmux
set background=dark
set t_Co=256

" Bell
set vb

" Show trailing whitespace
" From http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Syntax highlighting
syntax 	  on

highlight Comment   ctermfg=green
highlight Constant  ctermfg=magenta
highlight LineNr    ctermfg=grey
highlight PreProc   ctermfg=darkblue
highlight Statement ctermfg=darkblue
highlight Type      ctermfg=lightgreen

" Spacing
au Filetype asm      setl ts=8
au Filetype go       setl ts=8
au Filetype haskell  setl et sw=2 ts=2
au Filetype python   setl et sw=4 ts=4
au Filetype markdown setl et sw=4 ts=4 tw=79
au Filetype rst      setl et sw=4 ts=4 tw=79
