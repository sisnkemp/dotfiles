syn on
set ruler
set cindent
set cinoptions=:0,+4,g0,(4
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
set number
set hlsearch
set bg=dark
set showcmd
set mouse=a
set bs=2

set path+=./include;
set tags+=./.git/tags;,/home/stefan/src/openbsd/src/sys/arch/amd64/tags,tags

set foldcolumn=2
set foldmethod=indent
set foldlevel=20
set laststatus=2

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ Win\ %-{winnr()}\ %P

"colorscheme desert

inoremap û {<CR>}<Esc>O
inoremap Û {<CR>};<Esc>O

map <C-K> :pyf /usr/local/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/local/share/clang/clang-format.py<cr>

highlight LongLine ctermbg=DarkYellow guibg=DarkYellow
au BufWinEnter * let w:m0=matchadd('LongLine', '\%>80v.\+', -1)

"so ~/.vim/ftplugin/man.vim
