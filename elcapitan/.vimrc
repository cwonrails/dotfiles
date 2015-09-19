set nocompatible

" Install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'fatih/vim-nginx'
Plug 'Glench/Vim-Jinja2-Syntax'
" Plug 'godlygeek/tabular'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-marked', { 'for': 'markdown'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
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
Plug 'pbrisbin/vim-mkdir'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'raimondi/delimitmate'
Plug 'rhysd/committia.vim'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/preservenoeol'
Plug 'vim-scripts/tComment'
Plug 'wellle/tmux-complete.vim'

call plug#end()

" Enable fzf
set rtp+=~/.fzf

" Automatically reload .vimrc when saved
augroup reload_vimrc
	autocmd!

" Enable 256 colors in terminal
set t_Co=256

" Enable syntax highlighting
syntax enable

" Use ag (The Silver Searcher)
" let g:ackprg = 'ag --nogroup --nocolor --column'
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

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

" Start CtrlP with CtrlP
let g:ctrp_map = '<c-p>'
let g:ctrp_cmd = 'CtrlP'

" Fix GitGutter column color
highlight clear SignColumn

" Enable Solarized Dark
set background=dark
colorscheme solarized

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

" Open all folds

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
let g:syntastic_javascript_checkers=['tidy']
let g:syntastic_html_tidy_exec='/usr/local/bin/tidy'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng -"]

" Stop html-tidy from complaining about errors in handlebars files
let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }

" Supply path to editorconfig binary
let g:EditorConfig_exec_path='/usr/local/bin/editorconfig'

" Automatically recognize filetypes by extension

autocmd BufRead,BufNewFile *.hbs set filetype=html.handlebars syntax=mustache
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.styl set filetype=stylus

" Allow stylesheets to autocomplete hyphenated words
autocmd fileType css,scss,sass setlocal iskeyword+=-

" Enable spellchecking for Markdown
autocmd fileType markdown setlocal spell

" Disable highlighting of non-capitalized terms
set spellcapcheck=

" ----------------------------------------------------------------------------
" <tab> / <s-tab> / <c-v><tab> | super-duper-tab
" ----------------------------------------------------------------------------
function! s:can_complete(func, prefix)
  if empty(a:func) || call(a:func, [1, '']) < 0
    return 0
  endif
  let result = call(a:func, [0, matchstr(a:prefix, '\k\+$')])
  return !empty(type(result) == type([]) ? result : result.words)
endfunction

function! s:super_duper_tab(k, o)
  if pumvisible()
    return a:k
  endif

  let line = getline('.')
  let col = col('.') - 2
  if line[col] !~ '\k\|[/~.]'
    return a:o
  endif

  let prefix = expand(matchstr(line[0:col], '\S*$'))
  if prefix =~ '^[~/.]'
    return "\<c-x>\<c-f>"
  endif
  if s:can_complete(&omnifunc, prefix)
    return "\<c-x>\<c-o>"
  endif
  if s:can_complete(&completefunc, prefix)
    return "\<c-x>\<c-u>"
  endif
  return a:k
endfunction

if has_key(g:plugs, 'ultisnips')
  " UltiSnips will be loaded only when tab is first pressed in insert mode
  if !exists(':UltiSnipsEdit')
    inoremap <silent> <Plug>(tab) <c-r>=plug#load('ultisnips')?UltiSnips#ExpandSnippet():''<cr>
    imap <tab> <Plug>(tab)
  endif

  let g:SuperTabMappingForward  = "<tab>"
  let g:SuperTabMappingBackward = "<s-tab>"
  function! SuperTab(m)
    return s:super_duper_tab(a:m == 'n' ? "\<c-n>" : "\<c-p>",
                           \ a:m == 'n' ? "\<tab>" : "\<s-tab>")
  endfunction
else
  inoremap <expr> <tab>   <SID>super_duper_tab("\<c-n>", "\<tab>")
  inoremap <expr> <s-tab> <SID>super_duper_tab("\<c-p>", "\<s-tab>")
endif

" YouCompleteMe and UltiSnips conflict solution with SuperTab
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" Better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-Tab>"

" Have UltiSnips split window when editing or creating snippets
" let g:UltiSnipsEditSplit = "vertical"

" Disable YouCompleteMe for specific filetypes
" let g:ycm_filetype_blacklist = {
			" \ 'markdown' : 1,
			" \ 'tagbar' : 1,
			" \ 'text' : 1
			" \}

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
"
set complete-=i
set directory=$HOME/.vim/swap
set encoding=utf-8
set expandtab
set fileformats+=unix,mac,dos

set formatoptions-=t

set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw

set list
set listchars=tab:\|\ ,

" set nofoldenable

set noshowmode
set nrformats-=octal
set number

" set numberwidth=5
set relativenumber
"
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
