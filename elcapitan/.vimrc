set nocompatible

" Install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
" Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'fatih/vim-nginx'
Plug 'godlygeek/tabular'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-marked', { 'for': 'markdown'}
Plug 'jscappini/material.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'kchmck/vim-coffee-script'
Plug 'leshill/vim-json'
Plug 'majutsushi/tagbar'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
" Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
" Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.handlebars' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'pbrisbin/vim-mkdir'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'raimondi/delimitmate'
" Plug 'reedes/vim-colors-pencil', { 'on': 'Goyo' }
Plug 'rhysd/committia.vim'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
" Plug 'slim-template/vim-slim'
" Plug 'szw/vim-ctrlspace'
" Plug 'thoughtbot/pick.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/preservenoeol'
Plug 'vim-scripts/tComment'
" Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" Enable fzf
set rtp+=~/.fzf

" Automatically reload .vimrc when saved
augroup reload_vimrc
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Enable 256 colors in terminal
set t_Co=256

" Enable syntax highlighting
syntax enable

" Enable Solarized Dark
" colorscheme material
" set background=dark

" Use ag (The Silver Searcher)
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Remap Escape key to jk
imap jk <esc>

" Remap leader key to space bar
let mapleader= ' '
let maplocalleader= ' '

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
set diffopt+=vertical

" Enable Airline Powerline symbols
let g:airline_powerline_fonts = 1

" Enable Airline Tab Line
" let g:airline#extensions#tabline#enabled = 1

" Enable installed Go file engine for Vim-Ctrlspace
let g:CtrlSpaceEngine = "file_engine_darwin_amd64"

" Start CtrlP with CtrlP
let g:ctrp_map = '<c-p>'
let g:ctrp_cmd = 'CtrlP'

" Fix GitGutter column color
highlight clear SignColumn

" Set background to dark
nnoremap <leader>db :set background=dark<CR>

" Set background to light
nnoremap <leader>lb :set background=light<CR>

" Comment and uncomment lines
nnoremap <leader>c :TComment<CR>

" Look up selection in Dash
nnoremap <leader>dl :Dash<CR>

" Toggle distraction-free writing
nnoremap <leader>dfw :Goyo<CR>

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

" Toggle Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" Write file and quit
nnoremap <leader>q :wq<CR>

" Toggle Gundo (undo tree)
nnoremap <leader>u :GundoToggle<CR>

" Exit without writing file
nnoremap <leader>x :q!<CR>

" Strip whitespace on save
let g:StripWhitespaceOnSave=1

" Check for syntax errors on open
let g:syntastic_check_on_open=1

" Assign syntax checkers to specific filetypes
let g:syntastic_javascript_checkers=['jshint', 'eslint']

" Use tidy-html5 instead of tidy
let g:syntastic_html_tidy_exec='/usr/local/bin/tidy5'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng -"]

" Stop html-tidy from complaining about errors in handlebars files
let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }

" Supply path to editorconfig binary
let g:EditorConfig_exec_path='/usr/local/bin/editorconfig'

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.styl set filetype=stylus
autocmd BufRead,BufNewFile *.hbs set filetype=html.handlebars syntax=mustache
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Allow stylesheets to autocomplete hyphenated words
autocmd fileType css,scss,sass setlocal iskeyword+=-

" Enable spellchecking for Markdown
autocmd fileType markdown setlocal spell

" Disable highlighting of non-capitalized terms
set spellcapcheck=

" Distraction-free writing environment
function! s:goyo_enter()
	silent !tmux set status off
	colorscheme pencil
	set background=dark
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  let b:quitting=0
  let b:quitting_bang=0
  autocmd QuitPre <buffer> let b:quitting=1
  cabbrev <buffer> q! let b:quitting_bang=1 <bar> q!
endfunction

function! s:goyo_leave()
	silent !tmux set status on
  colorscheme solarized
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"YouCompleteMe and UltiSnips conflict solution with SuperTab
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Have UltiSnips split window when editing or creating snippets
let g:UltiSnipsEditSplit="vertical"

" Disable YouCompleteMe for specific filetypes
let g:ycm_filetype_blacklist = {
			\ 'markdown' : 1,
			\ 'tagbar' : 1,
			\ 'text' : 1
			\}

" Ensure Vim mouse reporting compatibility with iTerm2
if has('mouse_sgr')
	set ttymouse=sgr
endif

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use the default shell
set shell=$SHELL

" Core non-Plug Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set clipboard=unnamed
" set colorcolumn=+1
set complete-=i
set directory=$HOME/.vim/swap
set encoding=utf-8
set fileformats+=unix,mac,dos
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set nofoldenable
set noshowmode
set nrformats-=octal
set number
set numberwidth=5
set relativenumber
set ruler
set shiftwidth=2
set showcmd
set showmatch
set softtabstop=2
set smartcase
set smartindent
set smarttab
set tabstop=2
set textwidth=80
set ttimeout
set ttimeoutlen=100
set ttyfast
set undodir=$HOME/.vim/undo
set undofile
set undolevels=10000
set undoreload=10000
set wildmenu
set wildmode=list:longest,full
