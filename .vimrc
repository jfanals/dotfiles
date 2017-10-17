" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" jfanals plugins START

" Git manager
Plug 'tpope/vim-fugitive'

" Fugitive extension for Git branches
Plug 'idanarye/vim-merginal'

" Nerd Tree - File explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" comment multiple lines with leader + cc...
Plug 'scrooloose/nerdcommenter'

" Undo manager
Plug 'mbbill/undotree'

" Autosave
Plug 'vim-scripts/vim-auto-save'

" CtrlP search last files
Plug 'kien/ctrlp.vim'

" Manage sessions of vim
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Automatically detect working directory
Plug 'airblade/vim-rooter'

" Solarized Colorsheme
Plug 'flazz/vim-colorschemes'
" check the colorschemes: http://bytefluent.com/vivify/ #:colorscheme candyman

" Land on the window you choose A/B/C/...
Plug 't9md/vim-choosewin'

" Surround
Plug 'tpope/vim-surround'

" Beautiful vim desing
Plug 'bling/vim-airline'

" Show a git diff in column
Plug 'airblade/vim-gitgutter'

" Silver Searcher
Plug 'mileszs/ack.vim'

" Vim Slim Syntax
Plug 'slim-template/vim-slim'

" Swap windows without ruining your layout!
Plug 'wesQ3/vim-windowswap'

" ctags that includes gems in rails projects
" https://chodounsky.net/2016/12/09/using-tags-to-browse-ruby-and-gem-source-with-vim/
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'

" Display errors in code
Plug 'scrooloose/syntastic'

" Coffee script
Plug 'kchmck/vim-coffee-script'

" Vim Hardtime/Hardmode
Plug 'takac/vim-hardtime'

" Brings physics-based smooth scrolling to the Vim world!
Plug 'yuttie/comfortable-motion.vim'

" Easymotion
Plug 'easymotion/vim-easymotion'

"Incrementaly Highlights ALL pattern matches
Plug 'haya14busa/incsearch.vim'

" The ultimate snippet solution for Vim.
"Plug 'SirVer/ultisnips'

" A lightweight implementation of emacs's kill-ring for vim
"Plug 'maxbrunsfeld/vim-yankstack'

" jfanals plugins END 

" Initialize plugin system
call plug#end()

" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

"""""""
""""""" jfanals configuration START
"""""""



"""""""
"""""""

"""""""

""""""" set vim defaults START
" We're running Vim, not Vi!
set nocompatible      

" Enable syntax highlighting
syntax on             

" Enable filetype detection
filetype on           

" Enable filetype-specific indenting
filetype indent on    

" Enable filetype-specific plugins
filetype plugin on   

" Let Leader be SPACEBAR
let mapleader=" "

"Use Control hjkl to switch to correct window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" set local tab stop for ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2


" visual reselect of just pasted
"nnoremap gp `[v]`

" Extras
set encoding=utf-8

" Preserve last editing position in VIM
source $VIMRUNTIME/vimrc_example.vim

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" one-key indentation
" "from https://github.com/jpalardy/dotfiles/blob/master/vim/mappings.vim
nnoremap > >>
nnoremap < <<

" Allow saving of files as sudo when I forgot to start vim using sudo.                                                                                                                        
" "http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

" Set spellchecker
:setlocal spell spelllang=en_gb

" Remove selected text
nnoremap <leader>c :noh<cr>

" Show relative line number
if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif

" stop vim from creating automatic backups
set noswapfile
set nobackup
set nowb

" ignore case in serach
" https://stackoverflow.com/questions/2287440/how-to-do-case-insensitive-search-in-vim
set ignorecase
set smartcase
" also use \C or \c in search terms to force case in/sensitive

" Open the ctags definition in a new tab
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Open the ctags definition in a vertical split
map <leader>] :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <leader>h <C-T>
map <leader>l <C-]>

" Autocomplete with dictionary words when spell check is on
set complete+=kspell 

" Highlight the line the cursor is on
set cursorline

" Try to use while in insert mode
" Completion using C-x C-p
" Line completion C-x C-l
" Tag completion C-x C-]
" Ctag completion C-x C-o


" By default add spellchecker to markdown files and gitcommits
autocmd Filetype markdown setlocal spell textwidth=80
autocmd Filetype gitcommit,mail setlocal spell textwidth=76 colorcolumn=77

" http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
set shortmess=a
set cmdheight=2



""""""" NERDTree START
" Toggle NERDTree / File explorer
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
"working directoy allawys the one where the actual buffer is located
set autochdir
let NERDTreeChDirMode=2
"Show hidden files in NerdTree  
let NERDTreeShowHidden=1  

""""""" Undotree START
nnoremap <F3> :UndotreeToggle<CR>
"if has("pesistent_undo")
silent !mkdir ~/.vim/tmp/undo > /dev/null 2>&1
set undodir=~/.vim/tmp/undo/
set undofile
"endif

""""""" NERDCommenter START
"from https://github.com/jpalardy/dotfiles/blob/master/vim/mappings.vim
vnoremap # :call NERDComment(1, "toggle")<CR>
nnoremap # V:call NERDComment(1, "toggle")<CR>

""""""" Set Paste Toggle START
" to remove smart intending on demand
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>

" from https://github.com/sickill/vim-pasta
" Paste with indentation
"nnoremap p p`[v`]=
"nnoremap P P`[v`]=

"Indent pasted code
nnoremap <leader>= `[v`]=

""""""" Autosave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification

""""""" Fugitive Git
" Auto clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete
" Add git branch to status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gf :Gpush --force-with-lease<CR>
nnoremap <leader>gr :Git rebase

""""""" Merginal Fugitive
noremap <F6> :MerginalToggle<CR>

""""""" ctrlP config, last used files
"let g:ctrlp_map = "<c-p>"
let g:ctrlp_map = "<leader>p"
nnoremap <leader>m :CtrlPMRUFiles<CR>
"Keep caches between sessions - F5 to refresh
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_height = 25

""""""" Colorsheme solarized
colorscheme solarized
set term=xterm-256color
set background=dark

""""""" Choosewin plugin
nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

""""""" Vim Sessions Extension Management
silent !mkdir ~/.vim/tmp/session > /dev/null 2>&1
let g:session_directory = "~/.vim/tmp/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

""""""" Vim Git Gutter
set updatetime=250


""""""" Silver Searcher Ack settings
nnoremap <leader>a :Ack! 
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
endif

" Synstatic Ruby Rubocop
let g:syntastic_ruby_rubocop_exec      = '/url/bin/ruby /usr/local/bin/rubocop'

" HardTime
"let g:hardtime_default_on = 1

"Comfortable-motion
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Yankring/Yankstack
"let g:yankring_history_file = '.vim/tmp/.yankring-history'
"let g:yankstack_map_keys = 0
"nmap <C-P> <Plug>yankstack_substitute_older_paste
"nmap <C-N> <Plug>yankstack_substitute_newer_paste
"nnoremap <silent><F11> :YRShow<CR>
" :h yankring-tutorial
" <C-P> or <C-N> after p

" THINGS TODO ON NEW INSTALL
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"
"
" Inside of ~/.vim make /tmp, inside of which mkdir swap backup undo
" mkdir ~/.vim/tmp ~/.vim/tmp/swap ~/.vim/tmp/undo ~/.vim/tmp/backup
"
" install ctags, ack, ag
" sudo packer -S silver-searcher-git ack ctags
" sudo apt-get install ack-grep
" 
" on vim
" :PlugUpdate :PlugInstall
"
""""""" jfanals configuration END
