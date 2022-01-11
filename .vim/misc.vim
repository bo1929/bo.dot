" Twiddle the case of text under the cursor.
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction

" Append timestamps.
command! AppendDate :normal a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" {{{ === AutoCommands ===
" Reset cursor on startup
augroup ResetCursorShape
  au!
  autocmd VimEnter * :normal :startinsert :stopinsert 
augroup END

augroup FileTypeCommands
  autocmd!
  " Disale auto-comment insertion:
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  autocmd FileType html,sh,tex setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType python set omnifunc=python3complete#Complete
  autocmd FileType md,vimwiki setlocal nowrap
augroup END

if executable('black')
  augroup FormatPython
    autocmd BufWritePre *.py execute ':Black'
    autocmd FileType python nnoremap <buffer> <F9> :Black<CR>
  augroup END
endif
if executable('flake8')
  augroup LintPython
    autocmd FileType python nmap <silent> <F7> <Esc>:Khuno show<CR>
  augroup END
endif
" }}}
