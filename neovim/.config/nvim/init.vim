" One-liner to install:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin('~/.config/nvim/plugged')
  " System.
  Plug 'dag/vim-fish'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neovim/nvim-lspconfig'

  " Themes.
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
call plug#end()

set number
set autoindent
set shell=fish
set ai 		" Auto indent
set si 		" Smart indent
set nowrap	" No wrap lines 
set cursorline
set background=dark

syntax enable
filetype plugin indent on

" Neovim theme itself.
colorscheme nord

" Status line theme.
let g:lightline = { 'colorscheme': 'nord' }

:let mapleader = "\<Space>"

" Copypasta.
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
