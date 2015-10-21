if &compatible
  set nocompatible
end

" Install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

" Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'docker/docker', {'rtp': '/contrib/syntax/vim/', 'for': 'dockerfile' }
Plug 'elzr/vim-json'
Plug 'editorconfig/editorconfig-vim'
" Plug 'facebook/vim-flow',
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
" Plug 'hdima/python-syntax', { 'for': 'python' }
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
Plug 'jlong/sass-convert.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
" Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
" Plug 'klen/python-mode', { 'for': 'python' }
" Plug 'kristijanhusak/vim-hybrid-material'
Plug 'majutsushi/tagbar'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
" Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
" Plug 'neovimhaskell/haskell-vim'
Plug 'nginx/nginx', { 'branch': 'master', 'rtp': 'contrib/vim' }
" Plug 'NLKNguyen/papercolor-theme'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'pearofducks/ansible-vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'rhysd/committia.vim'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'rstacruz/vim-hyperstyle'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
" Plug 'vim-perl/vim-perl'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/preservenoeol'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/tComment'
Plug 'wellle/tmux-complete.vim'
" Plug 'w0ng/vim-hybrid'
Plug 'ynkdir/vim-vimlparser'

call plug#end()

" Enable fzf
set rtp+=~/.fzf

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
imap jk <esc>

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

let g:airline_powerline_fonts = 1

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Look up selection in Dash
nnoremap <leader>d :Dash<CR>

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Toggle Gundo
nnoremap <leader>g :Gundo<CR>

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

" Run vimproc
nnoremap <leader>vp :VimProcBang<space>

" Exit without writing file
nnoremap <leader>x :q!<CR>

" Strip whitespace on save
let g:StripWhitespaceOnSave=1

" Check for syntax errors on open
let g:syntastic_check_on_open=1

" Assign syntax checkers to specific filetypes
let g:syntastic_javascript_checkers=['jscs', 'jshint']
let g:formatters_javscript=['jscs']
" let g:syntastic_javascript_checkers=['jshint', 'eslint', 'jscs', 'gslint']

" Use tidy-html5 instead of tidy
" let g:syntastic_html_tidy_exec='/usr/local/bin/tidy'
let g:syntastic_html_tidy_exec='/usr/local/Cellar/tidy-html5/5.0.0/bin/tidy'
" let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng -"]

" Supply path to editorconfig binary
let g:EditorConfig_exec_path='/usr/local/bin/editorconfig'

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.styl set filetype=stylus

" Allow stylesheets to autocomplete hyphenated words
" autocmd fileType css,scss,sass setlocal iskeyword+=-

" Enable spellchecking for Markdown
autocmd fileType markdown setlocal spell

" Disable highlighting of non-capitalized terms
set spellcapcheck=

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
set shell=/usr/local/bin/bash

" Core non-Plug Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set clipboard=unnamed
set colorcolumn=+1
set complete-=i
" set completeopt=menuone,preview,longest
set completeopt=menuone,preview
set directory=$HOME/.vim/swap
set encoding=utf-8
set expandtab
" set grepformat=%f:%l:%c:%m,%f:%l:%m
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
" set nojoinspaces
set noshowmode
" set nrformats=hex
set number
set numberwidth=5
" set relativenumber
set ruler
set scrolloff=5
set sessionoptions-=options
set shiftwidth=2
" set shortmess=aIT
set showcmd
set showmatch
" set softtabstop=2
set smartcase
" set smartindent
set smarttab
set tabstop=2
set textwidth=80
set ttimeout
set ttimeoutlen=500
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=1000
" set virtualedit=block
" set whichwrap=b,s
set wildmenu
set wildmode=list:longest,full

" silent! set cryptmethod=blowfish2

" set formatoptions+=j

" Ensure mouse compatibility
" silent! set ttymouse=xterm2
" set mouse=a

" 80 chars/line
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" ============================================================================
" MAPPINGS {{{
" ============================================================================

" ----------------------------------------------------------------------------
" Basic mappings
" ----------------------------------------------------------------------------

" Movement in insert mode
" inoremap <C-h> <C-o>h
" inoremap <C-l> <C-o>a
" inoremap <C-j> <C-o>j
" inoremap <C-k> <C-o>k
" inoremap <C-^> <C-o><C-^>

" Make Y behave like other capitals
" nnoremap Y y$

" qq to record, Q to replay
" nmap Q @q

" ----------------------------------------------------------------------------
" Quickfix
" ----------------------------------------------------------------------------
" nnoremap ]q :cnext<cr>zz
" nnoremap [q :cprev<cr>zz

" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
" nnoremap ]b :bnext<cr>
" nnoremap [b :bprev<cr>

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

" ----------------------------------------------------------------------------
" vim-signify
" ----------------------------------------------------------------------------
let g:signify_vcs_list = ['git']

