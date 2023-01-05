
nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    silent execute "grep! -IsR --exclude-dir={ds_qds_square_models_git_*,*.venv,*_backup,archive,notes,.git,parquet,data,tests,bartest,static,dependencies,regtests,datasources/prod_setup,square_daily_equity_model/datasets} --exclude={*.ipynb,*tmp*,debug.*,*.so,*.js,*.csv,*.jpg,*.png} " . shellescape(@@) . " ."
    "execute "grep! --exclude-dir={\*.venv,archive,notes,.git,parquet} -R " . shellescape(@@) . " ."
    copen
    execute "redraw!"

    let @@ = saved_unnamed_register
endfunction

nnoremap <leader>f :call <SID>QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! s:QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

