" One-liner to install:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


call plug#begin('~/.config/nvim/plugged')
  Plug 'dag/vim-fish'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'shaunsingh/nord.nvim'
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

colorscheme nord

:let mapleader = "\<Space>"

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

