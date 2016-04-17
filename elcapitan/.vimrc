set nocompatible

let s:darwin = has('mac')

call plug#begin('~/.vim/plug')

Plug 'airblade/vim-gitgutter'
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
" Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'csscomb/vim-csscomb'
" Plug 'dag/vim-fish'
" Plug 'davidosomething/vim-jsdoc'
" Plug 'davidosomething/syntastic-hbstidy'
Plug 'dbakker/vim-lint', { 'for': 'vim' }
" Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
" Plug 'dhruvasagar/vim-dotoo'
" Plug 'digitaltoad/vim-pug'
" Plug 'digitaltoad/vim-jade'
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/', 'for': 'Dockerfile'}
" Plug 'dockyard/vim-easydir'
" Plug 'duggiefresh/vim-easydir'
" Plug 'dyng/ctrlsf.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
" Plug 'edkolev/promptline.vim'
" Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json', { 'for': 'json' }
" Plug 'ervandew/supertab'
" Plug 'evidens/vim-twig'
" Plug 'exu/pgsql.vim'
" Plug 'facebook/vim-flow', { 'for': 'javascript' }
Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'fmoralesc/vim-pad'
" Plug 'FredKSchott/CoVim'
" Plug 'freitass/todo.txt-vim'
" Plug 'garbas/vim-snipmate'
" Plug 'gavocanov/vim-js-indent'
" Plug 'godlygeek/csapprox'
" Plug 'google/vim-codefmt'
" Plug 'google/vim-glaive'
" Plug 'google/vim-jsonnet'
" Plug 'google/vim-maktaba'
" Plug 'google/vim-searchindex'
" Plug 'google/vim-syncopate'
" Plug 'gregsexton/gitv', { 'on': 'GitV' }
" Plug 'gregsexton/MatchTag'
" Plug 'groenewege/vim-less', { 'for': 'less' }
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-sexp'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
" Plug 'hashivim/vim-consul'
" Plug 'hashivim/vim-nomadproject'
" Plug 'hashivim/vim-ottoproject'
" Plug 'hashivim/vim-packer'
" Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'
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
" Plug 'jbgutierrez/vim-babel', { 'for': 'javascript' }
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
" Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
" if s:darwin
  " Plug 'keith/investigate.vim'
" endif
" Plug 'keith/swift.vim'
Plug 'kewah/vim-stylefmt', { 'do': 'npm install -g stylefmt' }
" Plug 'klen/python-mode', { 'for': 'python' }
" Plug 'kopischke/vim-stay'
" Plug 'kovisoft/paredit',    { 'for': 'clojure' }
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'kurayama/systemd-vim-syntax'
" Plug 'lambdalisue/vim-gista'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" Plug 'lfv89/vim-interestingwords'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'lukaszkorecki/workflowish'
" Plug 'majutsushi/tagbar'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'maksimr/vim-jsbeautify'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
" Plug 'mattn/livestyle-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" Plug 'mhinz/vim-grepper'
" Plug 'mhinz/vim-janah'
" Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
" Plug 'mhinz/vim-signify'
" Plug 'mhinz/vim-startify'
" Plug 'mileszs/ack.vim'
" Plug 'millermedeiros/vim-esformatter'
" Plug 'mitsuhiko/jinja2', { 'rtp': 'ext/Vim/' }
" Plug 'mkitt/tabline.vim'
" Plug 'moll/vim-node'
" Plug 'msanders/snipmate.vim'
Plug 'mtscout6/syntastic-local-eslint.vim'
" Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'nelstorm/vim-markdown-folding'
Plug 'nginx/nginx', { 'rtp': 'contrib/vim/', 'for': 'nginx' }
Plug 'ntpeters/vim-better-whitespace'
" Plug 'Olical/vim-enmasse'
" Plug 'osyo-manga/vim-anzu'
" Plug 'osyo-manga/vim-over'
" Plug 'osyo-manga/vim-watchdogs'
Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'othree/jspc.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
" Plug 'Quramy/tsuquyomi'
" Plug 'pangloss/vim-javascript'
" Plug 'pbrisbin/vim-mkdir'
" Plug 'pearofducks/ansible-vim'
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'powerline/powerline'
" Plug 'PotatoesMaster/i3-vim-syntax'
" Plug 'PotatoesMaster/vim-movelines'
" Plug 'Raimondi/delimitMate'
Plug 'ramitos/jsctags', { 'do': 'npm install -g jsctags' }
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
Plug 'SirVer/Ultisnips', { 'on': '<Plug>(tab)' }
" Plug 'sickill/vim-paste'
" Plug 'sjl/gundo.vim'
" Plug 'slim-template/vim-slim'
" Plug 'solarnz/thrift.vim'
" Plug 'spwhitt/vim-nix'
" Plug 'stephenway/postcss.snippets'
" Plug 'stephpy/vim-yaml'
" Plug 'suan/vim-instant-markdown'
" Plug 'svermeulen/vim-easyclip'
" Plug 'syngan/vim-vimlint', { 'for': 'vim' }
" Plug 'terryma/vim-multiple-cursors'
" Plug 'thinca/vim-quickrun'
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
Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-eunuch'
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
" Plug 'wlangstroth/vim-racket'
" Plug 'wting/rust.vim'
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'
" Plug 'Yggdroot/indentline'
Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }
" Plug 'zenbro/mirror.vim'
" if s:darwin
  " Plug 'zerowidth/vim-copy-as-rtf', { 'on': 'CopyRTF' }
" endif
" Plug 'ryanoasis/vim-devicons'

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

" Choose colorscheme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Launch FZF
nnoremap <leader>fzf :FZF<space>

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Preview markdown files in Marked.app
nnoremap <leader>mp :MarkedOpen<CR>
nnoremap <leader>mq :MarkedQuit<CR>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Write file if modified and quit
" nnoremap <leader>q :wq<CR>

" Save file
" nnoremap <leader>s :write<CR>
" nnoremap <leader>w :update<CR>

" Save (junegunn)
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>
nnoremap <leader>s :update<cr>
nnoremap <leader>w :update<cr>

" Quit (junegunn)
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa!<cr>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" Toggle Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" Toggle Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Run vimproc
nnoremap <leader>vp :VimProcBang<space>

" Exit without checking for changes
nnoremap <leader>x :q!<CR>

" Strip extra whitespace on save
autocmd BufWritePre * StripWhitespace

" Syntastic base settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_id_checkers = 0

" CSS linting
" available checkers: csslint, prettycss, stylelint
let g:syntastic_css_checkers = ['stylelint']
autocmd FileType css setlocal iskeyword+=-

" Docker linting
" available checkers: dockerfile_lint
let g:syntastic_Dockerfile_chckers = ['dockerfile_lint']

" Handlebars linting
" let g:syntastic_filetype_map = {
"   \ 'html.handlebars': 'handlebars',
"   \ }

" let g:syntastic_handlebars_checkers = ['handlebars', 'hbstidy']

" HTML linting
" available checkers: polylint, proselint, textlint, tidy, validator, w3
if s:darwin
  let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy5'
endif

" let g:syntastic_html_checkers = ['tidy']

let g:syntastic_quiet_messages = {
  \ "regex": ['/\<iron>\/', '/\<neon>\/', '/\<paper>\/', '/\<simpla>|/'] }

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

let g:syntastic_html_tidy_ignore_errors = [
  \ '<html> attribute "lang" lacks value',
  \ '<dom-module> is not recognized!',
  \ '<iron-icon> is not recognized!',
  \ '<paper-drawer-panel> is not recognized!',
  \ '<paper-menu> is not recognized!',
  \ '<paper-scroll-header-panel> is not recognized!',
  \ '<paper-toolbar> is not recognized!',
  \ '<simpla-block> is not recognized!',
  \ '<simpla-img> is not recognized!',
  \ '<simpla-text> is not recognized!',
  \ '<sm-ui-button> is not recognized!',
  \ '<sm-ui-modal> is not recognized!',
  \ '<sm-ui-callout> is not recognized!',
  \ '<sm-ui-toolbar> is not recognized!',
  \ '<sm-utility-share> is not recognized!',
  \ '<sm-utility-connect> is not recognized!',
  \ '<sm-utility-auth> is not recognized!',
  \ '<sm-module-save> is not recognized!',
  \ '<sm-module-login> is not recognized!',
  \ '<sm-module-notify> is not recognized!',
  \ 'discarding unexpected <dom-module',
  \ 'discarding unexpected </dom-module>',
  \ 'discarding unexpected <iron-icon>',
  \ 'discarding unexpected </iron-icon>',
  \ 'discarding unexpected <paper-drawer-panel>',
  \ 'discarding unexpected </paper-drawer-panel>',
  \ 'discarding unexpected <paper-menu>',
  \ 'discarding unexpected </paper-menu>',
  \ 'discarding unexpected <paper-scroll-header-panel>',
  \ 'discarding unexpected <paper-toolbar>',
  \ 'discarding unexpected </paper-toolbar>',
  \ 'discarding unexpected <simpla-text>',
  \ 'discarding unexpected </simpla-text>',
  \ 'discarding unexpected <simpla-block>',
  \ 'discarding unexpected </simpla-block>',
  \ 'discarding unexpected <simpla-img>',
  \ 'discarding unexpected </simpla-img>',
  \ 'discarding unexpected <sm-ui-button>',
  \ 'discarding unexpected </sm-ui-button>',
  \ 'discarding unexpected <sm-ui-modal>',
  \ 'discarding unexpected </sm-ui-modal>',
  \ 'discarding unexpected <sm-ui-callout>',
  \ 'discarding unexpected </sm-ui-callout>',
  \ 'discarding unexpected <sm-ui-toolbar>',
  \ 'discarding unexpected </sm-ui-toolbar>',
  \ 'discarding unexpected <sm-utility-share>',
  \ 'discarding unexpected </sm-utility-share>',
  \ 'discarding unexpected <sm-utility-connect>',
  \ 'discarding unexpected </sm-utility-connect>',
  \ 'discarding unexpected <sm-utility-auth>',
  \ 'discarding unexpected </sm-utility-auth>',
  \ 'discarding unexpected <sm-utility-placeholder>',
  \ 'discarding unexpected </sm-utility-placeholder>',
  \ "trimming empty ",
  \ 'proprietary attribute "include"',
  \ 'proprietary attribute "is"',
  \ 'proprietary attribute "items"',
  \ 'proprietary attribute "simpla-api"'
  \ ]

" Javascript linting
let g:syntastic_javascript_checkers = ['eslint']

" JSON linting
let g:syntastic_json_checkers = ['jsonlint']

" LESS linting
let g:syntastic_less_checkers = ['lessc']

" Lua linting
let g:syntastic_lua_checkers = ['luac', 'luacheck']
let g:syntastic_lua_luacheck_args = '--no-unused-args'

" Markdown linting
" available checkers: proselint, texlint, markdownlint
let g:syntastic_markdown_checkers = ['proselint', 'texlint']
let g:syntastic_markdown_mdl_args = ''

" Nix linting
let g:syntastic_nix_checkers = ['nix.vim']

" Sass linting
let g:syntastic_sass_checkers = ['sassc']
autocmd FileType scss setlocal iskeyword+=-

" Shell script / bash linting
let g:syntastic_sh_checkers = ['shellcheck', 'sh']

" VimL linting
let g:syntastic_vim_checkers=['vimlint']

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json
autocmd BufRead,BufNewFile *.conf set filetype=nginx
autocmd BufRead,BufNewFile *.coffee set filetype=coffeescript
autocmd BufRead,BufNewFile Dockerfile set ft=Dockerfile
autocmd BufRead,BufNewFile Dockerfile* setf Dockerfile
autocmd BufRead,BufNewFile *.dock setf Dockerfile
autocmd BufRead,BufNewFile *.[Dd]ockerfile setf Dockerfile
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.hs,*.lhs set filetype=haskell
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.less set filetype=less
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.nginx set ft=nginx
autocmd BufRead,BufNewFile */etc/nginx/* set ft=nginx
autocmd BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
autocmd BufRead,BufNewFile nginx.conf set ft=nginx
autocmd BufRead,BufNewFile *.py set filetype=python
autocmd BufRead,BufNewFile *.rb set filetype=ruby
autocmd BufRead,BufNewFile *.styl set filetype=stylus
autocmd BufRead,BufNewFile *.ts set filetype=typescript

" Enable spellchecking for Markdown
autocmd filetype markdown setlocal spell

" Activiate conceal
if has ('conceal')
autocmd filetype markdown set concealcursor=nv set conceallevel=2
endif

" Disable highlighting of non-capitalized terms in Markdown
set spellcapcheck=

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
if s:darwin
  set shell=/usr/local/bin/bash
endif

" Set editorconfig path
if s:darwin
  let g:EditorConfig_core_mode = 'external_command'
  " let g:EditorConfig_exclude_patterns = ['fugitive://.*']
endif

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

" Display column at 80 characters
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Enable mouse
" silent! set ttymouse=xterm2
" set mouse=a

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
runtime macros/matchit.vim

" ----------------------------------------------------------------------------
" undotree
" ----------------------------------------------------------------------------
let g:undotree_WindowLayout = 2

" ----------------------------------------------------------------------------
" AutoSave
" ----------------------------------------------------------------------------
function! s:autosave(enable)
  augroup autosave
    autocmd!
    if a:enable
      autocmd TextChanged,InsertLeave <buffer>
            \  if empty(&buftype) && !empty(bufname(''))
            \|   silent! update
            \| endif
    endif
  augroup END
endfunction

command! -bang AutoSave call s:autosave(<bang>1)

" ============================================================================
" vim-bracketed-paste minus the plugin
" ============================================================================
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

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
" jsctags (excludes node_modules)
" ----------------------------------------------------------------------------
if filereadable(getcwd() . '/.node_modules')
find . -type f -iregex .*\.js$ -not -path "./node_modules/*" -exec jsctags {} -f \; | sed '/^$/d' | sort > tags
endif

