set nocompatible

call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'godlygeek/tabular'
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-marked'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'kchmck/vim-coffee-script'
Plug 'leshill/vim-json'
Plug 'marijnh/tern_for_vim'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTogle' }
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/preservenoeol'
Plug 'vim-scripts/nginx.vim'
Plug 'vim-scripts/tComment'

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
set background=dark
colorscheme solarized

" Remap Escape key to jk
imap jk <esc>

" Remap leader key to space bar
let mapleader= " "

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

" Remap CtrlP to CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Fix GitGutter column color
highlight clear SignColumn

" Comment and uncomment lines
nnoremap <leader>c :TComment<CR>

" Toggle Gundo
nnoremap <leader>g :GundoToggle<CR>

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Preview markdown files in Marked.app
nnoremap <leader>mp :MarkedOpen<CR>
nnoremap <leader>mq :MarkedQuit<CR>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Save file
nnoremap <leader>s :w<CR>

" Save file and quit
nnoremap <leader>q :wq<CR>

" Strip whitespace
nnoremap <leader>w :StripWhitespace<CR>

" Check for syntax errors on open
let g:syntastic_check_on_open = 1

" Assign syntax checkers to specific filetypes
let g:syntastic_javascript_checkers = ['jshint']

" Stop html-tidy from finding false errors in Handlebars files
let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }

" Use 'HTML Tidy for HTML5' instead of 'HTML Tidy'
let g:syntastic_html_tidy_exec = 'tidy5'

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.hbs set filetype=html.handlebars syntax=mustache
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.styl set filetype=stylus

" Enable spellchecking for Markdown
autocmd fileType markdown setlocal spell

" Disable highlighting of non-capitalized terms
set spellcapcheck=

" Disable YouCompleteMe for Markdown and text files
let g:ycm_filetype_blacklist = {
			\ 'markdown' : 1,
			\ 'text' : 1
			\}

"YouCompleteMe and UltiSnips conflict solution with SuperTab
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Have UltiSnips split window when editing or creating snippets
let g:UltiSnipsEditSplit="vertical"

" Ensure Vim mouse reporting compatibility with iTerm2
if has('mouse_sgr')
	set ttymouse=sgr
endif

" Supply path to editorconfig binary
let g:EditorConfig_exec_path='usr/local/bin/editorconfig'

" Core non-Plug Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set clipboard=unnamed
set complete-=i
set directory=$HOME/.vim/swap
set encoding=utf-8
set fileformats+=unix,mac,dos
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
set ttimeout
set ttimeoutlen=100
set ttyfast
set undodir=$HOME/.vim/undo
set undofile
set undolevels=10000
set undoreload=10000
set wildmenu
set wildmode=list:longest,full
