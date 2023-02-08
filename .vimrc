".vimrc for VIM - Vi IMproved 8.2
syntax on

"set background=light
set background=dark
highlight Comment ctermfg=lightgrey
"colorscheme desert

set number
set ruler
set nowrap
set autoindent

"always display status line
set laststatus=2

"searching (search while typing, ignore case except when upper case is present)
set incsearch
set ignorecase
set smartcase

"spaces > tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

"relative number lines (in normal mode). See: https://jeffkreeftmeijer.com/vim-number/
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

"open file in right and rbelow split
set splitright
set splitbelow


"turn off bell sound
set belloff=all

