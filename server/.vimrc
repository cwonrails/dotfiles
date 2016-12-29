if &compatible
  set nocompatible
end

call plug#begin('~/.vim/plug')

Plug 'ap/vim-css-color'
Plug 'christoomey/vim-tmux-navigator'
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim' }
Plug 'elzr/vim-json'
Plug 'exu/pgsql.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'hashivim/vim-vaultproject'
Plug 'ingydotnet/yaml-vim'
Plug 'kurayama/systemd-vim-syntax'
Plug 'nginx/nginx', { 'rtp': 'contrib/vim/', 'for': 'nginx' }
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
Plug 'pearofducks/ansible-vim'
Plug 'scrooloose/syntastic'
Plug 'stephpy/vim-yaml'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'tomtom/tComment_vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

call plug#end()

" Enable 256 colors in terminal
set t_Co=256

" Enable syntax highlighting
syntax enable

" Enable indentation for specific filetypes
filetype plugin indent on

" Reload vimrc after saving (simple)
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END " }

" ============================================================================
" Basic key bindings
" ============================================================================

" Remap leader key to space bar
let g:mapleader= ' '
let g:maplocalleader= ' '

" Remap Escape key to jk
cnoremap jk <esc>
inoremap jk <esc>
xnoremap jk <esc>

" Movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^>

" Navigate by visual rather than actual lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Open new split panes to right and bottom
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=filler,vertical

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Save file
nnoremap <leader>s :write<CR>

" Save file if modified and quit
nnoremap <leader>q :wq<CR>

" Exit without checking for changes
nnoremap <leader>x :q!<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" Exit without checking for changes
nnoremap <leader>x :q!<CR>

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.conf set filetype=nginx
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.nginx set ft=nginx
autocmd BufRead,BufNewFile */etc/nginx/* set ft=nginx
autocmd BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
autocmd BufRead,BufNewFile nginx.conf set ft=nginx

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Core Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set clipboard=unnamed
set colorcolumn=+1
set complete-=i
set completeopt=menuone,preview
set directory=$HOME/.vim/swap
set display+=lastline
set encoding=utf-8
set expandtab
set formatoptions+=j
set hidden
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,
set modeline
set modelines=2
set mouse=a
silent! set ttymouse=xterm2
set noerrorbells
set nojoinspaces
set noshowmode
set nostartofline
set nrformats=hex
set number
set numberwidth=5
set ofu=syntaxcomplete#Complete
set relativenumber
set ruler
scriptencoding utf-8
set scrolloff=5
set secure
set sessionoptions-=options
set shiftwidth=2
set shortmess=aIT
set showcmd
set showmatch
set showtabline=2
set sidescrolloff=5
set softtabstop=2
set smartcase
set smartindent
set smarttab
set synmaxcol=128
set tabstop=2
set ttimeoutlen=500
set ttyfast
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=1000
set virtualedit=block
set whichwrap=b,s
set wildmenu
set wildmode=list:longest,full

silent! set cryptmethod=blowfish2

" ----------------------------------------------------------------------------
" Fix for Y yanking text both before and after cursor
" ----------------------------------------------------------------------------
nnoremap Y y$

" ----------------------------------------------------------------------------
" javascript-libraries-syntax
" ----------------------------------------------------------------------------
let g:used_javascript_libs = 'react,flux,vue,requirejs,handlebars,vue,jquery'
