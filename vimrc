set ruler    " shows ROW,COL at bottom right corner
set number   " shows line numbers
" set nowrap " dissables linewrapping
set background=dark " Soy Darksssss

filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on

" Saves time
nmap <space> :

set nocompatible
set encoding=utf-8
set showcmd " display incomplete commands

set modelines=0

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start

" Keep it sane
set scrolloff=3
set autoindent
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set laststatus=2
set relativenumber
set undofile

" Set <leader> key
let mapleader = ","

" Map code completion to leader+tab
imap <Leader><tab> <C-x><C-o>

" Configure regexes to use normal ones.
nnoremap / /\v
vnoremap / /\v

" If all letters are lower case, search
" is case-insensitive. Otherwise, search
" is case-sesitive
set ignorecase
set smartcase

" Global substitution by default
set gdefault

" Highlight search result as I type
set incsearch
set showmatch
set hlsearch

" Clear current search with , + space
nnoremap <leader><space> :noh<cr>

" Use tab instead of % to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Force me to go back to normal mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Save after losing focus
au FocusLost * :wa

" Faster escape settings
imap jk <ESC>
imap Jk <ESC>
imap JK <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ,W remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Move around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Red color for trailing spaces in insert mode
if has("autocmd")
  highlight ExtraWhitespace guibg=#330000 ctermbg=52
  au ColorScheme * highlight ExtraWhitespace guibg=#330000 ctermbg=52
  au BufEnter * match ExtraWhitespace /\s\+$/
  au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  au InsertLeave * match ExtraWhiteSpace /\s\+$/
endif

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:→\ ,eol:⁋

"" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd bufwritepost vimrc source $MYVIMRC " My vimrc has no point
endif

" CtrlP

"let g:ctrlp_map = '<c-p>' " Mapping
"let g:ctrlp_cmd = 'CtrlP' " Command
:nmap <leader>p :CtrlPBuffer<CR>

" Working directory settings
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
" Ignore some files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*

" Color Scheme
colorscheme molokai
let g:molokai_original = 1

" Remove backup files
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files

" Avoid saving files.