function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--preview="bat {} -H {n}"', '--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

function! FilesFzf(path)
  call fzf#vim#files(a:path, fzf#vim#with_preview({'options': ['--layout=reverse']}))
endfunction


" Using floating windows of Neovim to start fzf
if has('nvim-0.4.0')
  let $FZF_DEFAULT_OPTS .= '--layout=reverse'
  function! FloatingFZF()
    let width = float2nr(&columns * 0.9)
    let height = float2nr(&lines * 0.6)
    let opts = { 'relative': 'editor',
           \ 'row': (&lines - height) / 2,
           \ 'col': (&columns - width) / 2,
           \ 'width': width,
           \ 'height': height,
           \ 'style': 'minimal'
           \}

    let win = nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    call setwinvar(win, '&winhighlight', 'NormalFloat:TabLine')
  endfunction

  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
command! -nargs=* -bang INIT call FilesFzf("~/.config/nvim/")

function! s:mapEsc()
  if &ft=='fzf'
    silent! tunmap <Esc><Esc>
  else
    tnoremap <Esc><Esc> <C-\><C-n>
  endif
endfunction

autocmd! TermEnter * call s:mapEsc()

nnoremap <expr> <D-f> RipgrepFzf(expand('<cword>'), 0)
nnoremap <silent> <leader>r :History:<CR>
nnoremap <expr> <D-p> FilesFzf(getcwd())
nnoremap <expr> <leader>, FilesFzf("~/.config/nvim/")
