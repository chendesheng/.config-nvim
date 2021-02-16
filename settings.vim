filetype plugin indent on
syntax enable
set termguicolors
set nobackup
set nowritebackup
set noswapfile
set hlsearch
set incsearch
set number
set relativenumber
set showcmd
set title
set hidden
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set expandtab
set foldlevelstart=20
set foldmethod=syntax
set smartindent
set tabstop=2
set shiftwidth=2
set wildmode=longest,list
set completeopt=longest,menuone
set wildignore+=*/.idea/*
set wildignore+=*/.git/*
set wildignore+=*/.svn/*
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/*
set updatetime=300
set background=dark
set undolevels=5000
set undodir=$HOME/.undodir
set undofile
set wrap
set wrapmargin=0
set mouse=a
set signcolumn=no
set laststatus=0
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

colorscheme gruvbox
let $FZF_DEFAULT_OPTS .= '--layout=reverse'
let g:far#source='rgnvim'
let g:far#window_layout='left'
let g:far#enable_undo=1

hi! Normal ctermbg=NONE guibg=NONE

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

