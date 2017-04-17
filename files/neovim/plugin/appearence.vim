" Enable syntax highlighting
filetype plugin indent on
syntax enable

" Enable full 256 colors
set t_Co=256

" Show line numbers
set number

" Set terminal/tmux title
set title

" Show characters command will act on in bottom bar
set showcmd

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Show cursor position in bottom bar
set ruler

" Highlight 80th column
let &colorcolumn="80,".join(range(120,999), ",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27