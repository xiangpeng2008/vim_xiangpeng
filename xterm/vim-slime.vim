
let g:slime_no_mappings = 1
let g:slime_preserve_curpos = 0
"nmap <c-c> <Plug>SlimeParagraphSend
nnoremap <c-c> <Plug>SlimeLineSend
"inoremap <c-c> <esc><esc><Plug>SlimeLineSend
inoremap <c-c> <esc><Plug>SlimeLineSend
xnoremap <c-c> <Plug>SlimeRegionSend
nnoremap <c-s> <Plug>SlimeConfig

