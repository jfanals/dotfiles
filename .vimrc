" refenrence from https://github.com/Netherdrake/Dotfiles/blob/master/.vimrc 
" https://www.youtube.com/user/MinuteVimTricks?feature=watch

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
":so % #:BundleUpdate #:BundleInstall #:BundleClean ### :qa
" Bundle 'flazz/vim-colorschemes'
" check the colorschemes: http://bytefluent.com/vivify/ #:colorscheme candyman

" Bundle 'altercation/vim-colors-solarized'
" only solarized theme for vim
" no need for use teminator solaired https://github.com/ghuntley/terminator-solarized
" with special black     background_color = "#002b36"

" Bundle 'bling/vim-airline'
" beutifull vim design

Bundle 'scrooloose/nerdtree'
" Nerd Tree - File explorer
Bundle 'kien/ctrlp.vim'
" ControlP fuzzy search
"
Bundle 'tpope/vim-fugitive'
" Git manger

Bundle "sjl/gundo.vim"
" Undo manager

Bundle "scrooloose/syntastic.git"
" syntax checker TODO https://github.com/scrooloose/syntastic

Bundle "vim-scripts/tComment"
" comment and uncomment code

Bundle "mileszs/ack.vim"
" Ack link to vim for a better grep

Bundle "Lokaltog/vim-easymotion"
" leader key + ss move within one document

" Bundle "henrik/vim-indexed-search"
" This plugin redefines 6 search commands (/,?,n,N,*,#)

Bundle "tpope/vim-repeat"
" Make the repat . command do more interesting coherent things

Bundle "jiangmiao/auto-pairs"
" auto close brackets pairs use BS or CR?

Bundle "scrooloose/nerdcommenter"
" comment multiple lines with leader + cc...

" enable all the plugins
filetype plugin indent on

" general configs
set encoding=utf-8
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=4
""" set autoindent
set ruler
set hidden
set ignorecase
set smartcase
set showmatch
set incsearch
set hls
set relativenumber
set ls=2
set visualbell
set cursorline
" set nowrap
set backspace=indent,eol,start
set shell=/bin/bash
set completeopt -=preview
set textwidth=95
set wildmenu
set ttyfast
set showmode
" set autoread

let mapleader=" "

" syntax highlighting 
syntax on
" syntax enable
" colorscheme herald 
" set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256


" backup/persistance settings
set undodir=~/.vim/tmp/undo/
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swap/
set backupskip=/tmp/*,/private/tmp/*"
set backup
set writebackup
set noswapfile

" persist (g)undo tree between sessions
set undofile
set history=100
set undolevels=100

augroup line_return
	au!
	au BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\	execute 'normal! g`"zvzz' |
		\ endif
augroup END
" visual reselect of just pasted
nnoremap gp `[v]`
" consistent menu navigation
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

"some togglables
nnoremap <leader>1 :NERDTreeToggle<CR>
nnoremap <leader>2 :GundoToggle<CR>

"working directoy allawys the one where the actual buffer is located
set autochdir
let NERDTreeChDirMode=2
"Show hidden files in NerdTree  
let NERDTreeShowHidden=1  

" easy motion rebinded
let g:EasyMotion_mapping_f = "<leader>f"
let g:EasyMotion_mapping_F = "<leader>F"
let g:EasyMotion_mapping_w = "<leader>w"
let g:EasyMotion_mapping_b = "<leader>W"

nnoremap <leader><space> :noh<cr>

" make tab jump to next braket
" nnoremap <tab> %
" vnoremap <tab> %

" become a hardcore vim user

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap jk <esc>
nnoremap <leader>a :Ack! 
nnoremap <leader>v V`]


"Use Control hjkl to switch to correct window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ms 4000 mappings
" nnoremap <PageUp> {
" nnoremap <PageDown> }

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Use sane regexes
nnoremap / /\v
vnoremap / /\v

" THINGS TODO ON NEW INSTALL
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" Inside of ~/.vim make /tmp, inside of which mkdir swap backup undo
"
" install ctags, ack, ag
" sudo packer -S silver-searcher-git ack ctags

