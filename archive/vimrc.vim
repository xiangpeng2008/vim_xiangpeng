" enable all Python syntax highlighting features
let python_highlight_all = 1
hi Special ctermfg=red " for query specific keywords
hi Underlined ctermfg=magenta cterm=bold " for local variables
set statusline=\ %-3p%%\ \ \ Total:\ %-5L\ %m\ %F
"ranbow parenthese https://github.com/junegunn/rainbow_parentheses.vim
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]
au VimEnter * RainbowParentheses

" very important noted in
" ~/.vim/bundle/slimux/plugin/slimux.vim line 25
"call system()!tmux swap-pane -d -t split(split(a:line,':')[2],'\.')[1]
"
" https://github.com/jessekelighine/vindent.vim
let g:vindent_motion_less_prev = '[-' " jump to prev line with less indent.
let g:vindent_motion_less_next = ']-' " jump to next line with less indent.
"let g:vindent_motion_XX_ss     = '[p' " jump to start of the current block scope.
"let g:vindent_motion_XX_se     = ']p' " jump to end   of the current block scope.
let g:vindent_motion_OO_prev   = '[=' " jump to prev block of same indent.
let g:vindent_motion_OO_next   = ']=' " jump to next block of same indent.
let g:vindent_motion_more_prev = '[+' " jump to prev line with more indent.
let g:vindent_motion_more_next = ']+' " jump to next line with more indent.
let g:vindent_motion_diff_prev = '[;' " jump to prev line with different indent.
let g:vindent_motion_diff_next = '];' " jump to next line with different indent.
"let g:vindent_object_XX_ii     = 'ii' " select current block.
"let g:vindent_object_XX_ai     = 'ai' " select current block + one extra line  at beginning.
"let g:vindent_object_XX_aI     = 'aI' " select current block + two extra lines at beginning and end.
"
"https://stackoverflow.com/questions/6991638/how-to-auto-save-a-file-every-1-second-in-vim/27387138#27387138
"autocmd TextChanged,TextChangedI <buffer> silent write
"autocmd TextChanged <buffer> silent write
" it saves too often


