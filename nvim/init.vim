set hidden
let mapleader = " "

" PLUGINS
" Configure vim-plug
call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()


nnoremap <silent> <Leader><Leader> :bprevious<CR>

" VISUAL
colorscheme gruvbox
set background=dark

