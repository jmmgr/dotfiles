syntax on
color jellybeans
set nu
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set noexpandtab
set noswapfile
" save more history (default 20)
set history=200
"show a menu when you can choose with tab
set wildmenu
let mapleader=","
"show the commands already pressed
set showcmd

"make c-n and c-p filter in the command history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" allow to undo after closing and reopening
"set undofile
"set undodir=~/.vim/undodir

"when searching start looking before press enter
set incsearch
"higlight all the words
set hlsearch

"for searching with \f in your directory
nnoremap \f :edit **/

"map double esc to save
noremap <Esc><Esc> :w<CR>
"map bn and bp as control h and l
"nnoremap <C-h> :bp<CR>
"nnoremap <C-l> :bn<CR>
"map F8 to compile and execute in c
"nnoremap <F8> :w <CR> :!gcc % -o %< && ./%< <CR>
"
"make backspace work like most other apps
set backspace=2 

"normal and visual no recursive. map j and k, so we can deal with lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Eslint syntax syntastic
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = 'eslint_d'
"let g:syntastic_always_populate_loc_list = 1
"map ,p :lnext<CR>

"tmux send commands to the rigth with :S
"command! -nargs=1 S execute ':silent !tmux send-keys -tright '.string(<q-args>).' C-m >/dev/null &' | execute ':redraw!'

"format xml files
nnoremap <Leader>x 0:set ft=xml<CR> :%s/></>\r</eg<CR> <bar> :%s/\\"/"/eg<CR> <bar> :%s/\\n/\r/eg<CR> <bar> :%s/"body":"/"body":"\r/eg<CR> <bar> :%s/","agentO/\r","agentO/eg<CR> <bar> :%s/","encod/\r","encod/eg<CR> <bar> ggVG=
nnoremap <Leader>j 0:set ft=json<CR> :%s/\\"/"/eg<CR>:%s/:{/:\r{/eg<CR>:%s/,"/,\r"/eg<CR>:%s/{"/{\r"/eg<CR>:%s/}/\r}/eg<CR>ggVG=
"nnoremap <Leader>m :%s/\\"/"/eg<CR>:%s/:{/:\r{/eg<CR>:%s/,"/,\r"/eg<CR>:%s/{"/{\r"/eg<CR>:%s/}/\r}/eg<CR>ggVG=
nnoremap <Leader>v :%s/,<Space>/,\r/eg<CR>:%s/<SPACE>}/\r}/g<CR>:%s/{<SPACE>/{\r/g<CR>ggVG=

":'<,'>s/, /,\r/g  
":'<,'>s/ }/\r}/g 
":'<,'>s/{ /{\r/g  


"map insert console log
nnoremap <Leader>c :normal oconsole.log();<Esc>0f(a
"map open command in new buffer
nnoremap <Leader>n :enew <bar> .!
" map to delete buffer
nnoremap <Leader>d :bd!<CR>
"show regs and insert one
nnoremap <Leader>r :reg<CR>:normal "
"show buffers and select one
nnoremap <Leader>b :ls<CR>:b<Space>
" ctags generation
nnoremap <Leader>r :!ctags -R --exclude=node_modules --exclude=coverage .<CR>
" run eslint only this file
nnoremap <Leader>e :!eslint %<Tab><CR>
"vnoremap <Leader>f :s/^\s\+//g<CR>gv=:noh<CR>
" fun fzf
nnoremap <Leader>s :FZF<CR>

vnoremap <Leader>t :'<,'>w !tmuxsend<Space>

" Map map to normal terminal movement in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" make %% as edit a file in the same directory as the actual buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" So in the requires it will search for .js and .json
set suffixesadd=.js,.json

" New versions of vim brings :ELP, that would make :E ambiguous
command! E Explore

" Tweaks for browsing
" let g:netrw_banner=0        " disable annoying banner
" let g:netrw_browse_split=4  " open in prior window
" let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=""
" let g:netrw_list_hide=netrw_gitignore#Hide()
" For check the map: netrw-quickmap
"
execute 'silent !print "\e[?2004l"' 

" fzf, you need fzf installed in your machine:
" git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
set rtp+=~/.fzf

"set statusline
set laststatus=2
set statusline=%<%f\ %h%m%r\ %y%=%{v:register}\ %-14.(%l,%c%V%)\ %P

"set vim hard-time
"let g:hardtime_default_on = 1
"let g:hardtime_showmsg = 1
