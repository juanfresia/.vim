colo PaperColor

" Magic for tmux
set background=light
set t_Co=256

filetype plugin indent on
syn on se title
syntax on

" Activate menus and search highlight
set hlsearch
set term=screen-256color
set wildmenu

" Show relative numbering
set number
set relativenumber

" Set text width and no visual wrapping
"" format by selecting and gq
set textwidth=80
set nowrap

" Turn on spellcheck
set spelllang=en
set spell

" Move between tabs with F7 and F8
map <F7> :tabp<CR>
map <F8> :tabn<CR>

" Configure tabs behavior per file type
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

