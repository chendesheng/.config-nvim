autocmd! TermOpen * startinsert
tnoremap <Esc><Esc> <C-\><C-n>
nmap <leader>j :term<CR>

function! s:mapEsc()
  if &ft=='fzf'
    silent! tunmap <Esc><Esc>
  else
    tnoremap <Esc><Esc> <C-\><C-n>
  endif
endfunction

autocmd! TermEnter * call s:mapEsc()

