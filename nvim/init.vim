syntax on

let mapleader = " "

set hidden
set signcolumn=yes
set number relativenumber


" PLUGINS
" Configure vim-plug
call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax
Plug 'cespare/vim-toml'

call plug#end()



" VISUAL
colorscheme gruvbox
set background=dark
highlight clear SignColumn 

let g:coc_global_extensions=['coc-omnisharp', 'coc-rust-analyzer']

let g:ale_sign_column_always = 1
let g:ale_change_sign_column_color = 1
" let g:ale_cursor_detail = 1
" let g:ale_hover_to_preview = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'rust': ['analyzer']}
let g:ale_fixers = {'rust': ['rustfmt']}


let g:rooter_patterns = ['.git', '*.sln']

let $FZF_DEFAULT_OPTS = '--reverse'
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore'


" Permanent undo
set undodir=~/.vimdid
set undofile


" Remaps
nnoremap <silent> <Leader><Leader> <c-^>
nnoremap <silent> <Leader>f :Files<CR>

