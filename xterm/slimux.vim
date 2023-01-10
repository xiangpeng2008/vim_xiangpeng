
nnoremap <c-f> 0v%:SlimuxREPLSendSelection<CR>%
" send to slimux
nnoremap <c-c> :SlimuxREPLSendLine<CR>
inoremap <c-c> <esc>:SlimuxREPLSendLine<CR>
" send block and stay to the end of block
vnoremap <c-c> :SlimuxREPLSendSelection<CR>`>

let g:slimux_select_from_current_window = 1

" Q mapping
" press <leader>ti to look at first 10 rows
nnoremap <leader>ti yiwo<esc>pA til 10<esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>co to count table
nnoremap <leader>co yiwo<esc>pIcount <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>me to show meta of table
nnoremap <leader>me yiwo<esc>pImeta <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>to to do toExcel table
nnoremap <leader>to yiwo<esc>pa<esc>ItoExcel1 <esc>:SlimuxREPLSendLine<CR>ddk
"nnoremap <leader>to yiwo<esc>pa"<esc>ItoExcel1"<esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>qs to show qstudioOb as currentObj
nnoremap <leader>qs yiwo<esc>pIqstudioOb:<esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>si to show sizeMB of table
nnoremap <leader>si yiwo<esc>pIsizeMB <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>ov to show overview table
nnoremap <leader>ov yiwo<esc>pIoverview <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>pq to show plotPyq table
nnoremap <leader>pq yiwo<esc>pIplotPyq[;"line";""] <esc>:SlimuxREPLSendLine<CR>ddk

" press <leader>h to show help in python
nnoremap <leader>h Ihelp(<esc> A) <esc>:SlimuxREPLSendLine<CR>

" ,s for selecting panel
nnoremap <leader>s :SlimuxREPLConfigure<CR>

" grep mapping
" press <leader>ge to grep -nr [this workd] ./*
nnoremap <leader>ge yiwo<esc>pIge <esc>:SlimuxREPLSendLine<CR>ddk

