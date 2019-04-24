colo PaperColor

" Magic for tmux
set background=light
set t_Co=256

filetype plugin indent on
syn on se title
syntax on

" Don't know if this is needed
set term=screen-256color

" Activate and configure menus
set wildmenu
set wildignore=*.swp

" In case these are turned off by default
set showmatch   " Show matching brackets
set hlsearch    " Show search highlight
set showcmd     " Show partial commands

" Show relative numbering
set number
set relativenumber

" Set text width and no visual wrapping
"" format by selecting and gq
" set textwidth=80
set nowrap

" Turn on spellcheck
set spelllang=en
set spell

" Move between tabs with F7 and F8
map <F7> :tabp<CR>
map <F8> :tabn<CR>

" Show command
set showcmd

" Recognize Markdown files
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Enable auto-wrapping for markdown
autocmd FileType markdown setlocal textwidth=80

" Configure tabs behavior per file type
set tabstop=4
set expandtab
set shiftwidth=4    " indentation is 4 spaces wide
set softtabstop=4   " backspace treats 4 spaces like tab

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

