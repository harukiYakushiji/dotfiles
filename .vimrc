set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,cp932,sjis,utf-16le
set fileformats=unix,dos
" let g:pathogen_disabled = ["vim-commentary"]
execute pathogen#infect()
execute pathogen#helptags()
syntax enable
filetype plugin indent on

colorscheme slate
set laststatus=2
set ruler
set showmode
set number
set cursorline
set hidden
set wildmenu
set iminsert=0
set hlsearch
set autoindent
set noundofile
set backup
set noswapfile
set t_Co=256
set background=light
colorscheme lucius
if ( has('win32') || has('win64'))
    set backupdir=/$TEMP
else
    set backupdir=/tmp
endif

set shiftwidth=0 softtabstop=0 tabstop=4
let g:vim_indent_cont=8
set textwidth=0
set list listchars=tab:»\ ,eol:¬,trail:·
highlight SpecialKey ctermfg=darkgray
highlight NonText ctermfg=blue
augroup vimrc
    autocmd!
    autocmd FileType vim setlocal keywordprg=:help
augroup END

nnoremap <Leader>ev :e ~/dotfiles/.vimrc<CR>
nnoremap <Leader>cv :e ~/dotfiles/cheatsheets/vim.txt<CR>
nnoremap q: <Nop>
nnoremap <Leader>m :MRU<CR>
