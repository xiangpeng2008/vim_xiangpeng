

" mappings ------------ {{{
" shift this line down
nnoremap - ddp
"shift this line up
nnoremap _ ddkkp

" save when exists insert mode
inoremap <esc> <esc>:w<cr>

" convert the current word to uppercase in insert and normal mode
inoremap <leader>u <esc>viwUe
nnoremap <leader>u viwUe

" open current path in a new tab
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

"swich between panes in vim
noremap<c-s> <c-w><c-w>
" switch to last buffer
noremap <c-7> :b#<cr>

"edit vim in a vertical split and source it
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" to double check
nnoremap p "0p
nnoremap t p
" the text inside the parentheses https://learnvimscriptthehardway.stevelosh.com/chapters/15.htmlS
onoremap p i(
onoremap , f,
onoremap . f.
onoremap ' :<c-u>normal! f'f'vi'<cr>
onoremap " :<c-u>normal! f"f"vi"<cr>

onoremap a' :<c-u>normal! f'f'va'<cr>
onoremap a" :<c-u>normal! f"f"va"<cr>

onoremap i( :<c-u>normal! 0f(vi(<cr>
onoremap i{ :<c-u>normal! 0f{vi{<cr>
onoremap i[ :<c-u>normal! 0f[vi[<cr>

onoremap in( :<c-u>execute "normal! /(\r:nohlsearch\rvi("<cr>
onoremap in{ :<c-u>execute "normal! /{\r:nohlsearch\rvi{"<cr>
onoremap in[ :<c-u>execute "normal! /[\r:nohlsearch\rvi["<cr>

onoremap il( :<c-u>execute "normal! ?)\r:nohlsearch\rvi("<cr>
onoremap il{ :<c-u>execute "normal! ?}\r:nohlsearch\rvi{"<cr>
onoremap il[ :<c-u>execute "normal! ?]\r:nohlsearch\rvi["<cr>

onoremap a( :<c-u>normal! 0f(vf)<cr>
onoremap a{ :<c-u>normal! 0f{vf}<cr>
onoremap a[ :<c-u>normal! 0f[vf]<cr>

onoremap an( :<c-u>execute "normal! /(\r:nohlsearch\rvf)"<cr>
onoremap an{ :<c-u>execute "normal! /{\r:nohlsearch\rvf}"<cr>
onoremap an[ :<c-u>execute "normal! /[\r:nohlsearch\rvf]"<cr>

onoremap al( :<c-u>execute "normal! ?)\r:nohlsearch\rvF("<cr>
onoremap al{ :<c-u>execute "normal! ?}\r:nohlsearch\rvF{"<cr>
onoremap al[ :<c-u>execute "normal! ?]\r:nohlsearch\rvF["<cr>

" The CTRL-U (<C-U>) is used to remove the range that Vim may insert.  The Normal mode commands find the first '(' character and select the first word before it.  That usually is the function name.
onoremap <silent> F :<C-U>normal! 0f(hviw<CR>

onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>

" send block and stay to the end of block
" map ; to :
" map ; to : easier go to cmd mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

"surround the word in ",',() in normal mode
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>a viw<esc>a)<esc>bi(<esc>lel

"surround the word in ",',() in visual mode
vnoremap <leader>" <esc>`<i"<esc>`>lli"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>lli'<esc>
vnoremap <leader>a <esc>`<i(<esc>`>lli)<esc>
" surround the line in ()
nnoremap <leader>b I(<esc>A)<esc>I

" delete next content surrounding by ', "
nnoremap <leader>d' f'vf'd
nnoremap <leader>d" f"vf"d

nnoremap H ^
nnoremap L $

" clear highlight
nnoremap <leader>/ :nohlsearch<cr>
" use always gD
"nnoremap gd gD

" * to highlight all same words under cursor
"nnoremap * *N
highlight red_highlight ctermbg=red guibg=red
nnoremap <leader>r :match red_highlight /<C-R><C-W>/<CR>

" copy current word
nnoremap <leader>c yiw
nnoremap <leader>v viwpyiw

" Y to copy to osx clipboard
vnoremap Y :w !pbcopy<CR><CR>

" go to next or previous tab
noremap <c-h> <esc>gT
noremap <c-l> <esc>gt

"edit libSQ
nnoremap <leader>eq :tabe /Users/xiangpeng/Documents/Tools/qlib/libSQ.q<cr>
nnoremap <leader>ep :tabe /Users/xiangpeng/Documents/Tools/pylib/prototypeLib.py<cr>
"nnoremap <leader>ea :tabe /Users/xiangpeng/Documents/Tools/qlib/analysis.q<cr>
"
" entrer to creat new line without becoming inserting mode
"nnoremap <CR> o<Esc>

" map esc to be esc l in insert mode
inoremap <esc> <esc>:w<cr>l
inoremap <C-d> <Del>

"help ins-completion
inoremap <C-]> <C-X><C-]>
inoremap <C-F> <C-X><C-F>
inoremap <C-D> <C-X><C-D>
inoremap <C-L> <C-X><C-L>

" set S to save
nnoremap S :update<CR>

" set fold mode
"set foldmethod=syntax
nnoremap <space> zA
nnoremap <expr> <leader><space> &foldlevel ? 'zM' :'zR'

" press <leader>tl/tr to move column left/right
nnoremap <Leader>tr :VimwikiTableMoveColumnRight<CR>
nnoremap <Leader>tl :VimwikiTableMoveColumnRight<CR>

" open tag in new tab
nnoremap <C-]> <C-w><C-]><C-w>T

" list all tabs
nnoremap <leader>ta :tabs<CR>
" move current tab to first
nnoremap <leader>t0 :tabm 0<CR>

nnoremap <F10> :b <C-Z>

" to put in h, cpp local buffer
" switch between h and cpp
nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nnoremap / /\v
" https://learnvimscriptthehardway.stevelosh.com/chapters/32.html
"nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
nnoremap <leader>n :cnext<CR>
nnoremap <leader>N :cprevious<CR>

" Follow/create wiki link (create target wiki page if needed).
nnoremap <Leader>wf <Plug>VimwikiFollowLink

" nerdtree
nnoremap <C-t> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeVCS<CR>
" to double check, this is only for linux
"edit qlib in a vertical split
nnoremap <leader>eq :tabe /sqpc/scratch/intraday/zhangxia/lib/lib.q<cr>
nnoremap <leader>ea :tabe /sqpc/scratch/intraday/zhangxia/lib/analysis.q<cr>
nnoremap <leader>ep :-1tabe /sqpc/scratch/intraday/zhangxia/lib/prototypeLib.py<cr>

" ,s for selecting panel
nnoremap <leader>s :SlimuxREPLConfigure<CR>
vnoremap <C-c>     :SlimuxREPLSendSelection<CR>`>
nnoremap <C-c>     :SlimuxREPLSendLine<CR>^
inoremap <C-c>     <esc>:SlimuxREPLSendLine<CR>^
nnoremap <C-w>     viw:SlimuxREPLSendSelection<CR>


" put innerest foldername
"nnoremap <leader>pf :put =expand('%:p:h:t')<CR>
nnoremap <leader>pf :put =expand('%:p')<CR>

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" start of line
cnoremap <C-A>		<Home>
" back one character
cnoremap <C-B>		<Left>
" delete character under cursor
cnoremap <C-D>		<Del>
" end of line
cnoremap <C-E>		<End>
" forward one character
cnoremap <C-F>		<Right>
" recall newer command-line
cnoremap <C-N>		<Down>
" recall previous (older) command-line
cnoremap <C-P>		<Up>
" back one word
cnoremap <Esc><C-B>	<S-Left>
" forward one word
cnoremap <Esc><C-F>	<S-Right>

"These two mappings reduce a sequence of empty (;b) or blank (;n) lines into a single line >
nnoremap <leader>;b   GoZ<Esc>:g/^$/.,/./-j<CR>Gdd
nnoremap <leader>;n   GoZ<Esc>:g/^[ <Tab>]*$/.,/[^ <Tab>]/-j<CR>Gdd
" }}}
