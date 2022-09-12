let mapleader="\<Space>"
nnoremap <Space> <Nop>
nnoremap <silent> <C-l> :nohl<CR>
nnoremap <silent> <D-w> :BD!<CR>

inoremap <silent> <D-s> <esc>:w<CR>
nnoremap <silent> <D-s> :w<CR>
inoremap <silent> <C-s> <esc>:w<CR>
nnoremap <silent> <C-s> :w<CR>

nnoremap <silent> gs :Gstatus<CR>
nnoremap <silent> K :NERDTreeFocus<CR>
nnoremap <silent> <leader>f :Rg <C-r><C-w><CR>
nnoremap <silent> <leader>r :History:<CR>
nnoremap <silent> <D-p> :GFiles<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <leader>p :Files<CR>
nnoremap <silent> <leader>, :Files ~/.config/nvim<CR>
nnoremap <silent> <leader>m :History<CR>

imap <silent> <D-v> <C-o>"+p
vmap <silent> <D-c> "+y






