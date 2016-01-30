if &compatible
  set nocompatible
end

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
" Plug 'ajh17/VimCompletesMe'
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'ap/vim-css-color'
" Plug 'ap/vim-buftabline'
Plug 'bling/vim-airline'
" Plug 'blueyed/vim-diminactive'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'camthompson/vim-ember'
" Plug 'Chiel92/vim-autoformat'
" Plug 'chrisbra/NrrwRgn'
" Plug 'chrisbra/unicode.vim'
" Plug 'chriskempson/vim-tommorow-theme'
" Plug 'christoomey/vim-run-interactive'
" Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'ciaranm/detectindent'
Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'davidosomething/vim-jsdoc'
" Plug 'davidosomething/syntastic-hbstidy'
Plug 'dbakker/vim-lint'
" Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
" Plug 'dhruvasagar/vim-dotoo'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/', 'for': 'Dockerfile' }
" Plug 'dockyard/vim-easydir'
" Plug 'duggiefresh/vim-easydir'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json', { 'for': 'json' }
" Plug 'ervandew/supertab'
" Plug 'evidens/vim-twig'
" Plug 'facebook/vim-flow', { 'for': 'javascript' }
Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'fmoralesc/vim-pad'
" Plug 'FredKSchott/CoVim'
" Plug 'garbas/vim-snipmate'
" Plug 'gavocanov/vim-js-indent'
" Plug 'godlygeek/csapprox'
" Plug 'godlygeek/tabular'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
" Plug 'google/vim-jsonnet'
Plug 'google/vim-maktaba'
Plug 'google/vim-searchindex'
Plug 'google/vim-syncopate'
" Plug 'gregsexton/gitv', { 'on': 'GitV' }
" Plug 'gregsexton/MatchTag'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax'
" Plug 'haya14busa/incsearch.vim'
" Plug 'honza/vim-snippets'
" Plug 'ingydotnet/yaml-vim'
" Plug 'isRuslan/vim-es6'
" Plug 'itchyny/calendar.vim'
" Plug 'itchyny/lightline.vim'
" Plug 'jamessan/vim-gnupg'
Plug 'jbgutierrez/vim-babel', { 'for': 'javascript' }
" Plug 'jelera/vim-javascript-syntax'
Plug 'jiangmiao/auto-pairs'
" Plug 'jceb/vim-orgmode'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'joukevandermaas/vim-ember-hbs'
Plug 'JulesWang/css.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/gv.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
" Plug 'junegunn/vim-github-dashboard'
" Plug 'junegunn/vim-journal'
" Plug 'junegunn/vim-oblique'
" Plug 'junegunn/vim-peekaboo'
" Plug 'justinmk/vim-dirvish'
" Plug 'justinmk/vim-gtfo'
" Plug 'justinmk/vim-sneak'
" Plug 'KabbAmine/gulp-vim'
Plug 'kchmck/vim-coffee-script'
" Plug 'kewah/vim-cssfmt'
" Plug 'klen/python-mode', { 'for': 'python' }
" Plug 'kopischke/vim-stay'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'leafgarland/typescript-vim', { 'do': 'npm install -g typescript' }
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'lfv89/vim-interestingwords'
" Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'maksimr/vim-jsbeautify'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install && npm install --save tern-webidl' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" Plug 'mhinz/vim-grepper'
" Plug 'mhinz/vim-janah'
" Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
" Plug 'mileszs/ack.vim'
" Plug 'millermedeiros/vim-esformatter'
Plug 'mitsuhiko/jinja2', { 'branch': 'master', 'rtp': 'ext/Vim' }
" Plug 'moll/vim-node'
" Plug 'msanders/snipmate.vim'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'nginx/nginx', { 'branch': 'master', 'rtp': 'contrib/vim' }
Plug 'ntpeters/vim-better-whitespace'
" Plug 'osyo-manga/vim-anzu'
Plug 'osyo-manga/vim-watchdogs'
Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'pbrisbin/vim-mkdir'
Plug 'pearofducks/ansible-vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'PotatoesMaster/i3-vim-syntax'
" Plug 'powerline/powerline'
" Plug 'Raimondi/delimitMate'
Plug 'ramitos/jsctags'
Plug 'rhysd/committia.vim'
Plug 'rhysd/conflict-marker.vim'
" Plug 'rking/ag.vim'
" Plug 'rodjek/vim-puppet'
" Plug 'romainl/flattened'
" Plug 'rstacruz/vim-hyperstyle'
" Plug 'ruanyl/vim-fixmyjs'
Plug 'ruanyl/vim-eslint', {'do': 'npm install'}
" Plug 'ruanyl/vim-gh-line'
" Plug 'ryanss/vim-hackernews'
" Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
" Plug 'Shougo/neco-syntax', { 'for': 'scss' }
" Plug 'Shougo/neco-vim', { 'for': 'vim' }
" Plug 'Shougo/neocomplete.vim'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'slim-template/vim-slim', { 'for': 'slim' }
" Plug 'stephenway/postcss.snippets'
" Plug 'svermeulen/vim-easyclip'
" Plug 'suan/vim-instant-markdown'
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
" Plug 'terryma/vim-multiple-cursors'
" Plug 'thinca/vim-quickrun'
" Plug 'todesking/vint-syntastic', { 'for': 'vim' }
" Plug 'tomasr/molokai'
Plug 'tomtom/tComment_vim'
" Plug 'tomtom/tlib_vim'
Plug 'tmux-plugins/vim-tmux'
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-flagship'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-git'
" Plug 'tpope/vim-haml'
" Plug 'tpope/vim-markdown'
" Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-rhubarb'
" Plug 'tpope/vim-rsi'
" Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-vinegar'
" Plug 'tpope/vim-vividchalk'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-perl/vim-perl', { 'for': 'perl' }
Plug 'vim-ruby/vim-ruby'
" Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/PreserveNoEOL'
Plug 'vim-scripts/ReplaceWithRegister'
" Plug 'vim-scripts/SyntaxRange'
" Plug 'vimwiki/vimwiki'
" Plug 'vim-scripts/IndentTab'
" Plug 'vim-scripts/ingo-library'
" Plug 'vim-scripts/tComment'
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
" Plug 'wellle/tmux-complete.vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'wincent/command-t'
" Plug 'wlangstroth/vim-racket'
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'
Plug 'Yggdroot/indentline', { 'on': 'IndentLinesEnable' }
" Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }
Plug 'zerowidth/vim-copy-as-rtf', { 'on': 'CopyRTF' }
"
call plug#end()

" Automatically reload .vimrc when saved
augroup reload_vimrc
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Enable 256 colors in terminal
set t_Co=256

" filetype plugin indent on

" Reload .vimrc on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Enable syntax highlighting
syntax enable

" Remap leader key to space bar
let g:mapleader= ' '
let g:maplocalleader= ' '

" Remap Escape key to jk
cnoremap jk <esc>
inoremap jk <esc>
xnoremap jk <esc>

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

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Preview markdown files in Marked.app
" nnoremap <leader>mp :MarkedOpen<CR>
" nnoremap <leader>mq :MarkedQuit<CR>


" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Save file
nnoremap <leader>s :w<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

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
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1

" CSS linting
let g:syntastic_css_checkers=['stylelint']

" HTML linting
let g:syntastic_html_tidy_exec='/usr/local/bin/tidy'
let g:syntastic_html_tidy_ignore_errors=["proprietary attribute \"ng-"]

" Handlebars linting
let g:syntastic_filetype_map={
  \ 'html.handlebars': 'handlebars',
  \ }

let g:syntastic_handlebars_checkers=['handlebars', 'hbstidy']

" Javascript linting
let g:syntastic_javascript_checkers=['eslint']

" JSON linting
let g:syntastic_json_checkers=['jsonlint']

" Sass linting
let g:syntastic_sass_checkers=['sassc']

" Shell script / bash linting
let g:syntastic_sh_checkers=['shellcheck']

" VimL linting
let g:syntastic_vim_checkers=['vimlint']

" Supply path to editorconfig binary
let g:EditorConfig_exec_path='/usr/local/bin/editorconfig'

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.hs,*.lhs set filetype=haskell
autocmd BufRead,BufNewFile .{babel,eslint,jscs,jshint,stylelint}rc set filetype=json
autocmd BufRead,BufNewFile *.jade set filetype=jade
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
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,
set nocursorline
set noerrorbells
set novisualbell
set nojoinspaces
set noshowmode
set nostartofline
" set nowrap
set nrformats=hex
set nu
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
set textwidth=80
set ttimeout
set ttimeoutlen=10
set ttyfast
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=1000
set virtualedit=block
set whichwrap=b,s
set wildmenu
set wildmode=list:longest,list:full

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
" Airline.vim
" ----------------------------------------------------------------------------

augroup airline_config
  autocmd!
  " let g:airline_theme = "hybrid"
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#tabline#buffer_nr_format = '%s '
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
augroup END

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
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>gs :Gstatus<CR>gg<c-n>
nnoremap <Leader>dd :Gdiff<CR>
