
" skip /opt/homebrew/Cellar/vim/9.0.0800/share/vim/vim90/ftplugin/python.vim 
let b:did_ftplugin = 1 
"setlocal tabstop=4
"setlocal softtabstop=4
"setlocal shiftwidth=4
"setlocal textwidth=79
"setlocal expandtab
"setlocal autoindent
setlocal fileformat=unix

" enable all Python syntax highlighting features
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
