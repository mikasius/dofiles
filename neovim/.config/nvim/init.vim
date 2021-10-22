call plug#begin('~/.config/nvim/plugged')
  Plug 'dag/vim-fish'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'shaunsingh/nord.nvim'
call plug#end()

set number
set autoindent

syntax enable
filetype plugin indent on
colorscheme nord

:let mapleader = "\<Space>"

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

