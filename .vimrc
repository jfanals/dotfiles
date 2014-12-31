
" refenrence from https://github.com/Netherdrake/Dotfiles/blob/master/.vimrc 
" https://www.youtube.com/user/MinuteVimTricks?feature=watch

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
":so % #:BundleUpdate #:BundleInstall #:BundleClean ### :qa
Bundle 'flazz/vim-colorschemes'
" check the colorschemes: http://bytefluent.com/vivify/ #:colorscheme candyman

"Bundle 'altercation/vim-colors-solarized'
" only solarized theme for vim
" no need for use teminator solaired https://github.com/ghuntley/terminator-solarized
" with special black     background_color = "#002b36"

"Bundle 'bling/vim-airline'
" beutifull vim design

Bundle 'scrooloose/nerdtree'
" Nerd Tree - File explorer

Bundle 'kien/ctrlp.vim'
" ControlP fuzzy search
"
Bundle 'tpope/vim-fugitive'
" Git mangere

Bundle "tpope/vim-unimpaired"
" To use with fugitive to go throught the quick list faster using ]q and [q

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

"Bundle "jiangmiao/auto-pairs"
" auto close brackets pairs use BS or CR?

Bundle "scrooloose/nerdcommenter"
" comment multiple lines with leader + cc...

Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
" manage sessions of vim added a few shortcuts

Bundle "rhysd/clever-f.vim"
"clever-f extend f F t and T

Bundle "t9md/vim-choosewin"
" land to window you choose

Bundle "terryma/vim-expand-region"
" Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination

Bundle "Shougo/neocomplete.vim"
" interesting for future development

Bundle 'othree/html5.vim'
" HTML5 omnicomplete and syntax 


 

" LANGUAGE SPECIFIC PLUGINS
"Bundle "kana/vim-textobj-user"
"Bundle "nelstrom/vim-textobj-rubyblock"

" vim debug for xdebug for php
Bundle 'joonty/vdebug.git'
"let g:vdebug_options = {'server': '0.0.0.0', 'path_maps' : {"/srv/www/": "/home/jfanals/BtSync/vagrant/vagrant-local/www/"} }
"let g:vdebug_options = {'server': '0.0.0.0', 'path_maps' : {"/var/www/nizos.dev/public/api/": "/home/jfanals/BtSync/vagrant/nizosdevbox/www/nizos.dev/public/api/"} }
let g:vdebug_options = {'server': '0.0.0.0', 'path_maps' : {"/var/www/nizos.dev/public/": "/home/jfanals/BtSync/vagrant/nizosdevbox/www/nizos.dev/public/"} }
"let g:vdebug_options = {'server': '0.0.0.0', 'path_maps' : {"/srv/www/naturalcomolavidamisma/htdocs": "/home/jfanals/BtSync/vagrant/vagrant-local/www/naturalcomolavidamisma/htdocs"} }

" YankRing, keep history of yanks
Bundle "skwp/YankRing.vim"


" Vim-Jade syntax highlighting
Bundle "digitaltoad/vim-jade"

" plugin from http://www.vim.org/scripts/script.php?script_id=3081
" for indenting javascript files correctly
Bundle "vim-scripts/JavaScript-Indent"

Bundle "tpope/vim-surround"

" enable all the plugins
filetype plugin indent on

" general configs
set encoding=utf-8
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set smartindent
set ruler
set hidden
set ignorecase
set smartcase
set showmatch
set incsearch
set hls
"set relativenumber
set ls=2
set visualbell
set cursorline
" set nowrap
set textwidth=0 wrapmargin=0
set backspace=indent,eol,start
set shell=/bin/bash
set completeopt -=preview
"set textwidth=95
set wildmenu
set ttyfast
set showmode
" set autoread

let mapleader=" "

"syntax highlighting 
syntax on
syntax enable
"colorscheme herald 
colorscheme solarized
"let g:solarized_termcolors=256
set term=xterm-256color
set background=dark

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

set foldmethod=indent


" syntastic
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_javascript_jshint_exec = "/usr/local/bin/jshint"
let g:syntastic_javascript_jshint_args = "--config $HOME/.jshintrc"
let g:syntastic_mode_map = { 'mode': 'active',
     \ 'active_filetypes': ['javascript', 'ruby'], }
" https://github.com/scrooloose/syntastic#faqhtml5
" http://stackoverflow.com/a/23745506/315848

let g:syntastic_html_tidy_ignore_errors = ["unescaped", 
      \ "trimming empty", 
      \ "proprietary attribute \"infinite" ]
let g:syntastic_html_tidy_exec = "/home/jfanals/.linuxbrew/bin/tidy"
let g:syntastic_php_checkers = ['php']
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

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
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :GundoToggle<CR>
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>

"working directoy allawys the one where the actual buffer is located
set autochdir
let NERDTreeChDirMode=2
"Show hidden files in NerdTree  
let NERDTreeShowHidden=1  

"NERDCommenter
"from https://github.com/jpalardy/dotfiles/blob/master/vim/mappings.vim
vnoremap # :call NERDComment(1, "toggle")<CR>
nnoremap # V:call NERDComment(1, "toggle")<CR>

" ctrlP config
"let g:ctrlp_map = "<c-p>"
let g:ctrlp_map = "<leader>p"
let g:ctrlp_cmd = 'CtrlPMRU'
"nnoremap <leader>h :CtrlPMRU<CR>
"nnoremap <leader>bp :CtrlPBuffer<CR>

" easy motion rebinded
nmap <leader>f <Plug>(easymotion-s)
nmap  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"nmap <leader>f <Plug>(easymotion-f2)
"nmap <leader>F <Plug>(easymotion-F2)
"let g:EasyMotion_mapping_f = "<leader>f"
"let g:EasyMotion_mapping_F = "<leader>F"
"let g:EasyMotion_mapping_w = "<leader>w"
"let g:EasyMotion_mapping_b = "<leader>W"

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

"let g:ackprg = 'ag --vimgrep'
let g:ackprg = 'ag --nogroup --nocolor --column'

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

" one-key indentation
"from https://github.com/jpalardy/dotfiles/blob/master/vim/mappings.vim
nnoremap > >>
nnoremap < <<

" Use sane regexes
"nnoremap / /\v
"vnoremap / /\v

" session management
let g:session_directory = "~/.vim/tmp/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" vim-choosewin plugin
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable          = 1

" vim-expand-region plugin
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" Auto clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Add git branch to status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Allow saving of files as sudo when I forgot to start vim using sudo.                                                                                                                        
cmap w!! w !sudo tee > /dev/null %
"http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work

" YankRing configuration
"let g:yankring_history_file = '.vim/tmp/.yankring-history'
nnoremap <leader>yr :YRShow<CR>
"nnoremap C-y :YRShow<CR>

" NeoComplete configuration by YADR
" neocomplete
" Next generation completion framework.
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#enable_smart_case = 1
" Default # of completions is 100, that's crazy.
let g:neocomplete#max_list = 15
" Set minimum syntax keyword length.
let g:neocomplete#auto_completion_start_length = 3 
" Map standard Ctrl-N completion to Cmd-Space
inoremap <D-Space> <C-n>
" This makes sure we use neocomplete completefunc instead of
" the one in rails.vim, otherwise this plugin will crap out.
let g:neocomplete#force_overwrite_completefunc = 1
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" THINGS TODO ON NEW INSTALL
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" Inside of ~/.vim make /tmp, inside of which mkdir swap backup undo
" mkdir ~/.vim/tmp ~/.vim/tmp/swap ~/.vim/tmp/undo ~/.vim/tmp/backup
"
" install ctags, ack, ag
" sudo packer -S silver-searcher-git ack ctags
" sudo apt-get install ack-grep
" 
" on vim
" :BundleUpdate :BundleInstall
"

