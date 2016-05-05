set nocompatible

call plug#begin('~/.vim/plug')

Plug 'christoomey/vim-tmux-navigator'
Plug 'elzr/vim-json'
Plug 'exu/pgsql.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'hashivim/vim-vaultproject'
Plug 'ingydotnet/yaml-vim'
Plug 'kurayama/systemd-vim-syntax'
Plug 'nginx/nginx', { 'rtp': 'contrib/vim/', 'for': 'nginx' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'pearofducks/ansible-vim'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tComment_vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/PreserveNoEOL'
Plug 'Yggdroot/indentline'

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

" Strip extra whitespace on save
autocmd BufWritePre * StripWhitespace

" CSS linting
" available checkers: csslint, prettycss, stylelint
" let g:syntastic_css_checkers = ['stylelint']
" autocmd FileType css setlocal iskeyword+=-

" Docker linting
" available checkers: dockerfile_lint
" let g:syntastic_Dockerfile_chckers = ['dockerfile_lint.vim']
" let g:syntastic_Dockerfile_chckers = ['dockerfile_lint']

" HTML linting
" available checkers: polylint, proselint, textlint, tidy, validator, w3

" let g:syntastic_html_checkers = ['tidy', 'polylint', 'validator', 'w3']

"let g:syntastic_quiet_messages = {
"  \ "regex": ['/\<iron>\/', '/\<neon>\/', '/\<paper>\/', '/\<simpla>|/'] }

" Treat <li> and <p> tags like the block tags they are
"let g:html_indent_tags = 'li\|p'

" let g:syntastic_html_tidy_ignore_errors = [
"   \ '<html> attribute "lang" lacks value',
"   \ '<dom-module> is not recognized!',
"   \ '<iron-icon> is not recognized!',
"   \ '<paper-drawer-panel> is not recognized!',
"   \ '<paper-menu> is not recognized!',
"   \ '<paper-scroll-header-panel> is not recognized!',
"   \ '<paper-toolbar> is not recognized!',
"   \ '<simpla-block> is not recognized!',
"   \ '<simpla-img> is not recognized!',
"   \ '<simpla-text> is not recognized!',
"   \ '<sm-ui-button> is not recognized!',
"   \ '<sm-ui-modal> is not recognized!',
"   \ '<sm-ui-callout> is not recognized!',
"   \ '<sm-ui-toolbar> is not recognized!',
"   \ '<sm-utility-share> is not recognized!',
"   \ '<sm-utility-connect> is not recognized!',
"   \ '<sm-utility-auth> is not recognized!',
"   \ '<sm-module-save> is not recognized!',
"   \ '<sm-module-login> is not recognized!',
"   \ '<sm-module-notify> is not recognized!',
"   \ 'discarding unexpected <dom-module',
"   \ 'discarding unexpected </dom-module>',
"   \ 'discarding unexpected <iron-icon>',
"   \ 'discarding unexpected </iron-icon>',
"   \ 'discarding unexpected <paper-drawer-panel>',
"   \ 'discarding unexpected </paper-drawer-panel>',
"   \ 'discarding unexpected <paper-menu>',
"   \ 'discarding unexpected </paper-menu>',
"   \ 'discarding unexpected <paper-scroll-header-panel>',
"   \ 'discarding unexpected <paper-toolbar>',
"   \ 'discarding unexpected </paper-toolbar>',
"   \ 'discarding unexpected <simpla-text>',
"   \ 'discarding unexpected </simpla-text>',
"   \ 'discarding unexpected <simpla-block>',
"   \ 'discarding unexpected </simpla-block>',
"   \ 'discarding unexpected <simpla-img>',
"   \ 'discarding unexpected </simpla-img>',
"   \ 'discarding unexpected <sm-ui-button>',
"   \ 'discarding unexpected </sm-ui-button>',
"   \ 'discarding unexpected <sm-ui-modal>',
"   \ 'discarding unexpected </sm-ui-modal>',
"   \ 'discarding unexpected <sm-ui-callout>',
"   \ 'discarding unexpected </sm-ui-callout>',
"   \ 'discarding unexpected <sm-ui-toolbar>',
"   \ 'discarding unexpected </sm-ui-toolbar>',
"   \ 'discarding unexpected <sm-utility-share>',
"   \ 'discarding unexpected </sm-utility-share>',
"   \ 'discarding unexpected <sm-utility-connect>',
"   \ 'discarding unexpected </sm-utility-connect>',
  " \ 'discarding unexpected <sm-utility-auth>',
  " \ 'discarding unexpected </sm-utility-auth>',
  " \ 'discarding unexpected <sm-utility-placeholder>',
  " \ 'discarding unexpected </sm-utility-placeholder>',
  " \ "trimming empty ",
  " \ 'proprietary attribute "include"',
  " \ 'proprietary attribute "is"',
  " \ 'proprietary attribute "items"',
  " \ 'proprietary attribute "simpla-api"'
  " \ ]

" Javascript linting
" let g:syntastic_javascript_checkers = ['eslint']

" JSON linting
" let g:syntastic_json_checkers = ['jsonlint']

" Shell script / bash linting
" let g:syntastic_sh_checkers = ['sh']

" Automatically recognize filetypes by extension
" autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json
autocmd BufRead,BufNewFile *.conf set filetype=nginx
" autocmd BufRead,BufNewFile Dockerfile set ft=Dockerfile
" autocmd BufRead,BufNewFile Dockerfile* set ft=Dockerfile
" autocmd BufRead,BufNewFile *.dock set ft=Dockerfile
" autocmd BufRead,BufNewFile *.[Dd]ockerfile set ft=Dockerfile
" autocmd BufRead,BufNewFile *.go set filetype=go
" autocmd BufRead,BufNewFile *.hs,*.lhs set filetype=haskell
" autocmd BufRead,BufNewFile *.json set filetype=json
" autocmd BufRead,BufNewFile *.less set filetype=less
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.nginx set ft=nginx
autocmd BufRead,BufNewFile */etc/nginx/* set ft=nginx
autocmd BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
autocmd BufRead,BufNewFile nginx.conf set ft=nginx
autocmd BufRead,BufNewFile *.py set filetype=python
autocmd BufRead,BufNewFile *.rb set filetype=ruby
" autocmd BufRead,BufNewFile *.styl set filetype=stylus

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Core Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set binary
set clipboard=unnamed
set colorcolumn=+1
set complete-=i
set completeopt=menuone,preview
" set cursorline
set directory=$HOME/.vim/swap
set display+=lastline
set encoding=utf-8
set expandtab
" set exrc
set foldlevelstart=99
set formatoptions+=j
set gdefault
set grepformat=%f:%l:%c:%m,%f:%l:%m
set guioptions-=e
set hidden
set history=10000
" set hlsearch
set ignorecase
" set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,
set modeline
set modelines=2
" set mouse=a
" set nocursorline
set noerrorbells
set novisualbell
set nojoinspaces
set noshowmode
set nostartofline
" set nrformats=hex
set nrformats-=octal
set number
set numberwidth=5
" set ofu=syntaxcomplete#Complete
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
set synmaxcol=1000
set tabstop=2
set tabpagemax=50
set ttimeout
set ttimeoutlen=100
" set ttimeoutlen=500
set ttyfast
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=1000
set viminfo=%,'9999,s512,n~/.vim/viminfo
set virtualedit=block
set whichwrap=b,s
set wildmenu
set wildmode=list:longest,full

silent! set cryptmethod=blowfish2

" ----------------------------------------------------------------------------
" Fix for Y yanking text both before and after cursor
" ----------------------------------------------------------------------------
nnoremap Y y$

