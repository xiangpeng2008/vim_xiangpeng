

setlocal foldmethod=indent
set foldlevel=99

" add . as word separator
setlocal iskeyword-=.
set iskeyword-=.
" remove _ from word separator
setlocal iskeyword+=_

" to see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

"setlocal tabstop=4
"setlocal softtabstop=4
"setlocal shiftwidth=4
"setlocal textwidth=79
"setlocal expandtab
"setlocal autoindent
setlocal fileformat=unix

let python_highlight_all=1

augroup autocmd_python
    autocmd!
    autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

nmap <c-f> 0V]M <c-c>j

" send function to slimux with CTRL+f
nmap <buffer> <c-f> 0V]M<c-c>j
iabbrev <buffer> pdf pd.DataFrame(
iabbrev <buffer> pds pd.Series(
iabbrev <buffer> deff def():<left><left><left>
iabbrev <buffer> iff if:<left>
if $TERM !=# "xterm-kitty"
    nnoremap <leader>q Oq<esc>:SlimuxREPLSendLine<CR>dd
else
    "nnoremap <leader>q Oq<esc><Plug>SlimeLineSend
    nnoremap <leader>q Oq<esc>:<c-u>call slime#send_lines(v:count1)<cr>dd
endif
