if &compatible
  set nocompatible
end

let s:darwin = has('mac')

call plug#begin('~/.vim/plugged')

" Plug 'ahmedelgabri/vim-ava-snippets'
" Plug 'airblade/vim-gitgutter'
" Plug 'ajh17/VimCompletesMe'
Plug 'altercation/vim-colors-solarized'
Plug 'amperser/proselint', { 'rtp': '/plugins/vim/syntastic_proselint/' }
" Plug AndrewRadev/inline_edit.vim
" Plug AndrewRadev/linediff.vim
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'ap/vim-css-color'
" Plug 'ap/vim-buftabline'
" Plug 'arkwright/vim-radar'
" Plug 'b4winckler/vim-objc'
" Plug 'bendavis78/vim-polymer'
" Plug 'benekastah/neomake'
" Plug 'blindFS/vim-taskwarrior'
" Plug 'blueyed/vim-diminactive'
" Plug 'briancollins/vim-jst'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'camthompson/vim-ember'
" Plug 'cespare/vim-toml'
" Plug 'Chiel92/vim-autoformat'
" Plug 'chrisbra/csv.vim'
" Plug 'chrisbra/NrrwRgn'
" Plug 'chrisbra/unicode.vim'
" Plug 'chriskempson/vim-tommorow-theme'
" Plug 'christoomey/vim-run-interactive'
" Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'ciaranm/detectindent'
Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'csscomb/vim-csscomb'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'cwonrails/vim-polymer', { 'branch': 'fix-css-syntax' }
" Plug 'dag/vim-fish'
" Plug 'davidosomething/vim-jsdoctidy
" Plug 'davidosomething/syntastic-hbstidy'
Plug 'dbakker/vim-lint'
" Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
" Plug 'dhruvasagar/vim-dotoo'
Plug 'digitaltoad/vim-pug'
" Plug 'digitaltoad/vim-jade'
Plug 'docker/docker', { 'rtp': 'contrib/syntax/vim/' }
Plug 'dockyard/vim-easydir'
" Plug 'duggiefresh/vim-easydir'
" Plug 'dyng/ctrlsf.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
" Plug 'edkolev/promptline.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
" Plug 'ervandew/supertab'
" Plug 'evidens/vim-twig'
" Plug 'exu/pgsql.vim'
" Plug 'facebook/vim-flow'
Plug 'fatih/vim-go'
" Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'fmoralesc/vim-pad'
" Plug 'FredKSchott/CoVim'
" Plug 'freitass/todo.txt-vim'
" Plug 'gabrielelana/vim-markdown'
" Plug 'garbas/vim-snipmate'
" Plug 'gavocanov/vim-js-indent'
" Plug 'godlygeek/csapprox'
" Plug 'google/vim-codefmt'
" Plug 'google/vim-glaive'
" Plug 'google/vim-jsonnet'
" Plug 'google/vim-maktaba'
" Plug 'google/vim-searchindex'
" Plug 'google/vim-syncopate'
" Plug 'gregsexton/gitv'
" Plug 'gregsexton/MatchTag'
Plug 'groenewege/vim-less'
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-sexp'
Plug 'hail2u/vim-css3-syntax'
" Plug 'hashivim/vim-consul'
" Plug 'hashivim/vim-nomadproject'
" Plug 'hashivim/vim-ottoproject'
" Plug 'hashivim/vim-packer'
" Plug 'hashivim/vim-terraform'
" Plug 'hashivim/vim-vagrant'
" Plug 'hashivim/vim-vaultproject'
Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
" Plug 'honza/dockerfile'
Plug 'honza/vim-snippets'
" Plug 'ingydotnet/yaml-vim'
Plug 'inside/vim-search-pulse'
" Plug 'int3/vim-extradite'
" Plug 'isRuslan/vim-es6'
" Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
" Plug 'itspriddle/vim-jquery'
if s:darwin
  Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
endif
" Plug 'jamessan/vim-gnupg'
" Plug 'janko-m/vim-test'
" Plug 'jaxbot/browserlink.vim'
" Plug 'jaxbot/semantic-highlight.vim'
" Plug 'jbgutierrez/vim-babel'
" Plug 'jceb/vim-orgmode'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'jiangmiao/auto-pairs'
" Plug 'joukevandermaas/vim-ember-hbs'
" Plug 'JulesWang/css.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/gv.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-after-object'
" Plug 'junegunn/vim-easy-align'
" Plug 'junegunn/vim-emoji'
" Plug 'junegunn/vim-github-dashboard'
" Plug 'junegunn/vim-journal'
" Plug 'junegunn/vim-oblique'
" Plug 'junegunn/vim-peekaboo'
" Plug 'junegunn/vim-xmark'
" Plug 'justinmk/vim-dirvish'
" Plug 'justinmk/vim-gtfo'
" Plug 'justinmk/vim-sneak'
" Plug 'KabbAmine/gulp-vim'
" Plug 'kana/vim-operator-user'
" Plug 'kchmck/vim-coffee-script'
" if s:darwin
"  Plug 'keith/investigate.vim'
" endif
" Plug 'keith/swift.vim'
Plug 'kewah/vim-stylefmt'
" Plug 'klen/python-mode', { 'for': 'python' }
" Plug 'kopischke/vim-stay'
" Plug 'kovisoft/paredit', { 'for': 'clojure' }
" Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kurayama/systemd-vim-syntax'
" Plug 'lambdalisue/vim-gista'
Plug 'leafgarland/typescript-vim'
" Plug 'lfv89/vim-interestingwords'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'lukaszkorecki/workflowish'
" Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
" Plug 'mattn/livestyle-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree'
" Plug 'mhinz/vim-grepper'
" Plug 'mhinz/vim-janah'
" Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'mhinz/vim-signify'
" Plug 'mhinz/vim-startify'
" Plug 'mileszs/ack.vim'
" Plug 'millermedeiros/vim-esformatter'
" Plug 'mitsuhiko/jinja2', { 'rtp': 'ext/Vim/' }
" Plug 'mkitt/tabline.vim'
Plug 'moll/vim-node'
" Plug 'msanders/snipmate.vim'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'nelstorm/vim-markdown-folding'
Plug 'nginx/nginx', { 'rtp': 'contrib/vim/' }
Plug 'ntpeters/vim-better-whitespace'
" Plug 'oplatek/Conque-Shell'
" Plug 'Olical/vim-enmasse'
" Plug 'osyo-manga/vim-anzu'
" Plug 'osyo-manga/vim-over'
" Plug 'osyo-manga/vim-watchdogs'
" Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'othree/jspc.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
" Plug 'Quramy/tsuquyomi'
" Plug 'pangloss/vim-javascript'
" Plug 'pbrisbin/vim-mkdir'
Plug 'pearofducks/ansible-vim'
" Plug 'plasticboy/vim-markdown'
" Plug 'powerline/powerline'
" Plug 'PotatoesMaster/i3-vim-syntax'
" Plug 'PotatoesMaster/vim-movelines'
" Plug 'Raimondi/delimitMate'
" Plug 'ramitos/jsctags'
" Plug 'reedes/vim-colors-pencil'
" Plug 'reedes/vim-lexical'
" Plug 'reedes/vim-litecorrect'
" Plug 'reedes/vim-pencil'
" Plug 'reedes/vim-thematic'
" Plug 'reedes/vim-textobj-quote'
" Plug 'reedes/vim-textobj-usr'
" Plug 'reedes/vim-wheel'
" Plug 'reedes/vim-wordy'
Plug 'rhysd/committia.vim'
" Plug 'rhysd/conflict-marker.vim'
if s:darwin
  Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
endif
" Plug 'rking/ag.vim'
" Plug 'rodjek/vim-puppet'
" Plug 'romainl/flattened'
" Plug 'romainl/vim-qf'
" Plug 'ryanss/vim-hackernews'
" Plug 'rstacruz/vim-hyperstyle'
" Plug 'ruanyl/vim-fixmyjs'
" Plug 'ruanyl/vim-gh-line'
" Plug 'rust-lang/rust.vim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" augroup nerd_loader
"   autocmd!
"   autocmd VimEnter * silent! autocmd! FileExplorer
"   autocmd BufEnter,BufNew *
"         \  if isdirectory(expand('<amatch>'))
"         \|   call plug#load('nerdtree')
"         \|   execute 'autocmd! nerd_loader'
"         \| endif
" augroup END
Plug 'scrooloose/syntastic'
Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/neco-syntax'
" Plug 'Shougo/neco-vim'
" Plug 'Shougo/neocomplete.vim'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler.vim'
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'Shougo/vimshell.vim'
" Plug 'SirVer/Ultisnips'
" Plug 'sickill/vim-paste'
" Plug 'sjl/gundo.vim'
" Plug 'slim-template/vim-slim'
" Plug 'solarnz/thrift.vim'
" Plug 'spwhitt/vim-nix'
" Plug 'stephenway/postcss.snippets'
" Plug 'stephpy/vim-yaml'
" Plug 'suan/vim-instant-markdown'
" Plug 'svermeulen/vim-easyclip'
" Plug 'syngan/vim-vimlint'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'thinca/vim-quickrun'
" Plug 'thinca/vim-themis'
" Plug 'timcharper/textile.vim'
" Plug 'tomasr/molokai'
Plug 'tomtom/tComment_vim'
" Plug 'tomtom/tlib_vim'
Plug 'tmux-plugins/vim-tmux'
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-afterimage'
" Plug 'tpope/vim-bundler'
" Plug 'tpope/vim-capslock'
" Plug 'tpope/vim-characterize'
" Plug 'tpope/vim-classpath'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fireplace'
" Plug 'tpope/vim-flagship'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-git'
" Plug 'tpope/vim-haml'
" Plug 'tpope/vim-haystack'
" Plug 'tpope/vim-heroku'
" Plug 'tpope/vim-liquid'
" Plug 'tpope/vim-markdown', { 'for': 'markdown' }
" Plug 'tpope/vim-obsession'
" Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-rhubarb'
" Plug 'tpope/vim-rsi'
" Plug 'tpope/vim-salve'
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-vim-sexp-mappings-for-regular-people'
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-tbone'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-vinegar'
" Plug 'tpope/vim-vividchalk'
" Plug 'tweekmonster/braceless.vim'
" Plug 'tyru/caw.vim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-ctrlspace/vim-ctrlspace'
" Plug 'vim-outliner/vim-outliner'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-perl/vim-perl', { 'for': 'perl' }
Plug 'vim-ruby/vim-ruby'
" Plug 'vim-scripts/dbext.vim'
" Plug 'vim-scripts/PreserveNoEOL'
" Plug 'vim-scripts/ReplaceWithRegister'
" Plug 'vim-scripts/SyntaxComplete'
" Plug 'vim-scripts/SyntaxRange'
" Plug 'vimwiki/vimwiki'
" Plug 'vim-scripts/IndentTab'
" Plug 'vim-scripts/ingo-library'
" Plug 'vim-scripts/tComment'
" Plug 'vim-utils/vim-husk'
" Plug 'wavded/vim-stylus', { 'for': 'stylus' }
" Plug 'wcdicarlo/vim-notebook'
" Plug 'wellle/targets.vim'
" Plug 'wellle/tmux-complete.vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'wincent/command-t'
" Plug 'wincent/ferret'
" Plug 'wincent/terminus'
" Plug 'wlangstroth/vim-racket'
" Plug 'wting/rust.vim'
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'
" Plug 'Yggdroot/indentline'
Plug 'ynkdir/vim-vimlparser'
" Plug 'zenbro/mirror.vim'
" if s:darwin
"   Plug 'zerowidth/vim-copy-as-rtf', { 'on': 'CopyRTF' }
" endif
" Plug 'ryanoasis/vim-devicons'

call plug#end()

" Enable 256 colors in terminal
set t_Co=256

" Enable syntax highlighting
syntax enable
" syntax on

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
" inoremap <C-^> <C-o><C-^>

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
let g:solarized_termtrans=1

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Remap CtrlP to Ctrlp
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Preview markdown files in Marked.app
nnoremap <leader>mp :MarkedOpen!<CR>
nnoremap <leader>mq :MarkedQuit<CR>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Save file and quit
nnoremap <leader>q :wq<CR>

" Save file
nnoremap <leader>s :write<CR>
nnoremap <leader>w :update<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" Toggle Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Exit without checking for changes
nnoremap <leader>x :q!<CR>

" Strip extra whitespace on save
autocmd BufWritePre * StripWhitespace

" Syntastic base settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:syntastic_id_checkers = 1
" let g:syntastic_echo_current_error = 1

" CSS linting
" available checkers: stylelint
let g:syntastic_css_checkers = ['stylelint']
autocmd FileType css setlocal iskeyword+=-

" Docker linting
" available checkers: dockerfile_lint
let g:syntastic_Dockerfile_chckers = ['dockerfile_lint']

" HTML linting
" available checkers: polylint, proselint, textlint, tidy, validator, w3
if s:darwin
  let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy'
endif

let g:syntastic_html_checkers = ['tidy']

" Treat <li> and <p> tags like the block tags they are (Thoughtbot)
let g:html_indent_tags = 'li\|p'

" Ignore Apple's W3-invalid html pinned favicon code
let g:syntastic_html_tidy_ignore_errors = [ '<link> proprietary attribute "color"' ]

" Javascript linting
let g:syntastic_javascript_checkers = ['eslint']

" JSON linting
let g:syntastic_json_checkers = ['jsonlint']

" Lua linting
let g:syntastic_lua_checkers = ['luacheck']
let g:syntastic_lua_luacheck_args = '--no-unused-args'

" Markdown linting
" available checkers: proselint, textlint, markdownlint
let g:syntastic_markdown_checkers = ['proselint', 'textlint']

" SCSS linting
autocmd FileType scss setlocal iskeyword+=-

" Shell script / bash linting
let g:syntastic_sh_checkers = ['shellcheck']
" let g:is_posix = 1

" VimL linting
let g:syntastic_vim_checkers=['vimlint']

" Enable spellchecking for Markdown
autocmd filetype markdown setlocal spell

" Activiate conceal for Markdown
if has ('conceal')
  autocmd filetype markdown set concealcursor=inv
  autocmd filetype markdown set conceallevel=2
endif

" Disable highlighting of non-capitalized terms in Markdown
set spellcapcheck=

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
if s:darwin
  set shell=/usr/local/bin/bash
endif

" Editorconfig settings
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Fugitive shotcuts
nnoremap <leader>gd :<Leader>Gdiff<cr>
nnoremap <leader>gs :<Leader>Gstatus<cr>

" Core Vim settings
set autoindent
set autoread
" set autowrite
set backspace=indent,eol,start
" set backspace=2
set backupdir=$HOME/.vim/backup
set binary
set clipboard=unnamed
set colorcolumn=+1
set complete-=i
" set complete-=t
" set completeopt-=preview
" set completeopt+=menu,menuone
set completeopt=menuone,preview
" set cursorline
set directory=$HOME/.vim/swap
set display+=lastline
set encoding=utf-8
set expandtab
" set exrc
" set foldlevelstart=99
set formatoptions+=j
set gdefault
set grepformat=%f:%l:%c:%m,%f:%l:%m
set guioptions-=e
set hidden
set history=1000
" set hlsearch
set ignorecase
" set incsearch
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,
" set listchars=tab:»·,trail:·,nbsp:·
set modeline
set modelines=2
" set mouse=a
silent! set ttymouse=xterm2
" set nobackup
" set nocursorline
set noerrorbells
set nofoldenable
set novisualbell
set nojoinspaces
set noshowmode
set nostartofline
" set noswapfile
" set notimeout
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
" set synmaxcol=512
set synmaxcol=1000
set tabstop=2
set tabpagemax=50
set ttimeout
" set ttimeoutlen=10
set ttimeoutlen=100
" set ttimeoutlen=500
set ttyfast
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000
set viminfo=%,'9999,s512,n~/.vim/viminfo
set virtualedit=block
set whichwrap=b,s
set wildmenu
set wildmode=list:longest,full

silent! set cryptmethod=blowfish2

" Display column at 80 characters
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

" ----------------------------------------------------------------------------
" Fix for Y yanking text both before and after cursor
" ----------------------------------------------------------------------------
nnoremap Y y$

" ----------------------------------------------------------------------------
" Quickfix
" ----------------------------------------------------------------------------
nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz

" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>
nnoremap <leader>bd :bd<cr>

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" ----------------------------------------------------------------------------
" matchit.vim
" ----------------------------------------------------------------------------
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" ----------------------------------------------------------------------------
" undotree
" ----------------------------------------------------------------------------
let g:undotree_WindowLayout = 2

" ============================================================================
" lightline.vim
" ============================================================================
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" ============================================================================
" vim-search-pulse
" ============================================================================
" integration with incsearch.vim
let g:vim_search_pulse_disable_auto_mappings = 1
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Next or previous match is followed by a Pulse
map n <Plug>(incsearch-nohl-n)<Plug>Pulse
map N <Plug>(incsearch-nohl-N)<Plug>Pulse
map * <Plug>(incsearch-nohl-*)<Plug>Pulse
map # <Plug>(incsearch-nohl-#)<Plug>Pulse
map g* <Plug>(incsearch-nohl-g*)<Plug>Pulse
map g# <Plug>(incsearch-nohl-g#)<Plug>Pulse

" Pulses the first match after hitting the enter keyan
autocmd! User IncSearchExecute
autocmd User IncSearchExecute :call search_pulse#Pulse()

" ----------------------------------------------------------------------------
" AutoSave
" ----------------------------------------------------------------------------
" function! s:autosave(enable)
"   augroup autosave
"     autocmd!
"     if a:enable
"       autocmd TextChanged,InsertLeave <buffer>
"             \  if empty(&buftype) && !empty(bufname(''))
"             \|   silent! update
"             \| endif
"     endif
"   augroup END
" endfunction
"
" command! -bang AutoSave call s:autosave(<bang>1)

" ----------------------------------------------------------------------------
" NERDTree
" ----------------------------------------------------------------------------
" close vim even if the only window left open is NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ----------------------------------------------------------------------------
" vim-signify
" ----------------------------------------------------------------------------
let g:signify_vcs_list = ['git']

" ----------------------------------------------------------------------------
" CtrlP
" ----------------------------------------------------------------------------
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" if executable('ag')
  " Use Ag over Grep
  " set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif

" ----------------------------------------------------------------------------
" Tab completion (Thoughtbot)
" ----------------------------------------------------------------------------
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<tab>"
"     else
"         return "\<c-p>"
"     endif
" endfunction
" inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <S-Tab> <c-n>

" ----------------------------------------------------------------------------
" Ultisnips
" ----------------------------------------------------------------------------

" Trigger configuration.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Make UltiSnipsEdit split window.
" let g:UltiSnipsEditSplit="vertical"
