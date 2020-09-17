set hidden

" PLUGINS
" Configure vim-plug
call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()


nnoremap <silent> <Space><Space> :bprevious<CR>

" VISUAL
colorscheme gruvbox
set background=dark

