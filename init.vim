call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'https://tpope.io/vim/sleuth.git'
Plug 'https://tpope.io/vim/unimpaired.git'
Plug 'https://tpope.io/vim/eunuch.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'qpkorr/vim-bufkill'
Plug 'airblade/vim-rooter'
Plug 'mileszs/ack.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'itchyny/vim-qfedit'
Plug 'edwinb/idris2-vim'
" Plug 'romainl/vim-qf'
" Plug 'wfxr/minimap.vim'
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Plug 'jiangmiao/auto-pairs'
call plug#end()

" lua require('lspsettings') 
lua require('tssettings')

runtime settings.vim
runtime keymap.vim
runtime rg.vim
runtime term.vim
runtime coc.vim
