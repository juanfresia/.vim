colo PaperColor

" Magic for tmux
set background=dark
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

" Sane splitting
set splitbelow
set splitright

" Set text width and no visual wrapping
"" format by selecting and gq
set nowrap

" Turn on spellcheck
set spelllang=en
set nospell

" Move between tabs with F7 and F8
map <F7> :tabp<CR>
map <F8> :tabn<CR>

" Show command
set showcmd

" Sane backspace
set backspace=indent,eol,start

" Recognize Markdown files
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Enable auto-wrapping for markdown
autocmd FileType markdown setlocal textwidth=80

" File browser plugin
let g:netrw_banner=0    " Hide top banner
let g:netrw_liststyle=3 " Tree view

" Configure tabs behavior per file type
set tabstop=4
set expandtab
set shiftwidth=4    " indentation is 4 spaces wide
set softtabstop=4   " backspace treats 4 spaces like tab

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab


" Plugins! Dont forget to :PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" let mapleader = ","
nnoremap <SPACE> <Nop>
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nmap <leader>gd <Plug>(coc-definition)

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

