call plug#begin(stdpath('data') . '/plugged')
" Plug 'neovim/nvim-lsp'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'https://tpope.io/vim/sleuth.git'
Plug 'https://tpope.io/vim/unimpaired.git'
Plug 'https://tpope.io/vim/eunuch.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
" Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'qpkorr/vim-bufkill'
Plug 'vimlab/split-term.vim'
call plug#end()

runtime settings.vim
runtime term.vim
runtime git.vim
runtime nerdtree.vim
runtime fzf.vim
runtime coc.vim
" runtime format.vim
