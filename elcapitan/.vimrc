if &compatible
  set nocompatible
end

" Install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let s:darwin = has ('mac')

if s:darwin
  let g:plug_url_format = 'git@github.com:%s.git'
else
  let $GIT_SSL_NO_VERIFY = 'true'
endif

call plug#begin('~/.vim/bundle')

Plug 'altercation/vim-colors-solarized'
Plug 'ap/vim-css-color'
Plug 'bling/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'ciaranm/detectindent'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'digitaltoad/vim-jade'
Plug 'docker/docker', {'rtp': '/contrib/syntax/vim/', 'for': 'Dockerfile' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'easymotion/vim-easymotion'
Plug 'maksimr/vim-jsbeautify'
Plug 'editorconfig/editorconfig-vim'
" Plug 'facebook/vim-flow', { 'for': 'javascript' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'google/vim-jsonnet'
Plug 'google/vim-maktaba'
Plug 'google/vim-searchindex'
" Plug 'gregsexton/gitv', { 'on': 'GitV' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'honza/vim-snippets'
if s:darwin
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
endif
Plug 'jbgutierrez/vim-babel', { 'for': 'javascript' }
" Plug 'joukevandermaas/vim-ember-hbs'
" Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'KabbAmine/gulp-vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
" if s:darwin
Plug 'keith/investigate.vim'
" endif
Plug 'kewah/vim-cssfmt', { 'for': 'css' }
" Plug 'klen/python-mode', { 'for': 'python' }
Plug 'lfv89/vim-interestingwords'
Plug 'jelera/vim-javascript-syntax'
" Plug 'majutsushi/tagbar'
Plug 'maksimr/vim-jsbeautify'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mtscout6/syntastic-local-eslint.vim', { 'for': 'javascript' }
Plug 'mustache/vim-mustache-handlebars'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'nginx/nginx', { 'branch': 'master', 'rtp': 'contrib/vim' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'osyo-manga/vim-watchdogs'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'pearofducks/ansible-vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'rhysd/committia.vim'
if s:darwin
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
endif
" Plug 'rking/ag.vim'
Plug 'rstacruz/vim-hyperstyle'
Plug 'ruanyl/vim-eslint', {'do': 'npm install'}
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'SirVer/ultisnips'
" Plug  'slim-template/vim-slim'
" Plug 'svermeulen/vim-easyclip'
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
Plug 'terryma/vim-multiple-cursors'
" Plug 'thinca/vim-quickrun'
Plug 'tmux-plugins/vim-tmux'
" Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'vim-perl/vim-perl'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/preservenoeol'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/tComment'
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }
" Plug 'zerowidth/vim-copy-as-rtf', { 'on': 'CopyRTF' }

call plug#end()

" Enable 256 colors in terminal
set t_Co=256

" Reload .vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Enable syntax highlighting
syntax enable

" Remap Escape key to jk
cnoremap jk <esc>
inoremap jk <esc>
xnoremap jk <esc>

" Remap leader key to space bar
let g:mapleader= ' '
let g:maplocalleader= ' '

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

" Choose colorscheme
set background=dark
colorscheme solarized

" Enable powerline fonts for airline
" let g:airline_powerline_fonts = 1

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Look up selection in Dash
" *Need to remap / expand this*

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Preview markdown files in Marked.app
nnoremap <leader>mp :MarkedOpen<CR>
nnoremap <leader>mq :MarkedQuit<CR>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Save file
nnoremap <leader>s :w<CR>

" Write file and quit
nnoremap <leader>q :wq<CR>

" Run vimproc
nnoremap <leader>vp :VimProcBang<space>

" Exit without writing file
nnoremap <leader>x :q!<CR>

" Toggle Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Strip whitespace on save
let g:StripWhitespaceOnSave=1
autocmd BufWritePre * StripWhitespace

" Check for syntax errors on open
let g:syntastic_check_on_open=1

" HTML linting: Use tidy-html5 instead of tidy
let g:syntastic_html_tidy_exec='/usr/local/bin/tidy'

" Javascript linting
let g:syntastic_javascript_checkers=['eslint']

" JSON linting
let g:syntastic_json_checkers=['jsonlint']

" Sass linting
let g:syntastic_sass_checkers=['sassc']

" Shell script / bash linting
let g:syntastic_sh_checkers=['shellcheck', 'bashate', 'sh']

" VimL linting
let g:syntastic_vim_checkers=['vimlint']

" Supply path to editorconfig binary
let g:EditorConfig_exec_path='/usr/local/bin/editorconfig'

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.hs,*.lhs set filetype=haskell
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.less set filetype=less
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.py set filetype=python
autocmd BufRead,BufNewFile *.rb set filetype=ruby
autocmd BufRead,BufNewFile *.styl set filetype=stylus

" Allow stylesheets to autocomplete hyphenated words
autocmd fileType css,scss,sass setlocal iskeyword+=-

" Enable spellchecking for Markdown
autocmd fileType markdown setlocal spell

" Disable highlighting of non-capitalized terms
set spellcapcheck=

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
if s:darwin
set shell=/usr/local/bin/bash
endif

" Core non-Plug Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set clipboard=unnamed
set colorcolumn=+1
set complete-=i
set completeopt=menuone,preview
set directory=$HOME/.vim/swap
set encoding=utf-8
set expandtab
set foldlevelstart=99
set formatoptions+=j
set grepformat=%f:%l:%c:%m,%f:%l:%m
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,
set nocursorline
set novisualbell
set nojoinspaces
set noshowmode
set nostartofline
set nrformats=hex
set number
set numberwidth=5
set relativenumber
set ruler
set scrolloff=5
set sessionoptions-=options
set shiftwidth=2
set shortmess=aIT
set showcmd
set showmatch
set showtabline=2
set softtabstop=2
set smartcase
set smartindent
set smarttab
set tabstop=2
" set textwidth=80
set ttimeout
set ttimeoutlen=500
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=1000
set virtualedit=block
set whichwrap=b,s
set wildmenu
set wildmode=list:longest,full

silent! set cryptmethod=blowfish2

" 80 chars/line
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" ----------------------------------------------------------------------------
" Movement in insert mode
" ----------------------------------------------------------------------------

inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>gs :Gstatus<CR>gg<c-n>
nnoremap <Leader>gd :Gdiff<CR>

" ----------------------------------------------------------------------------
" vim-signify
" ----------------------------------------------------------------------------

let g:signify_vcs_list = ['git']

" ------------------------------------------------------------------------------

" Handlebars
augroup filetype_hbs
  autocmd!
  au BufRead,BufNewFile *.hbs,*.handlebars,*.hbs.erb,*.handlebars.erb setl ft=mustache syntax=mustache
augroup END

" Airline.vim
augroup airline_config
  autocmd!
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#buffer_nr_format = '%s '
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
augroup END
