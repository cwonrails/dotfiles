if &compatible
  set nocompatible
end

call plug#begin('~/.vim/plugged')

" Plug 'ahmedelgabri/vim-ava-snippets', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'airblade/vim-gitgutter'
" Plug 'alampros/vim-styled-jsx'
Plug 'altercation/vim-colors-solarized'
Plug 'Andrewradev/splitjoin.vim'
" Plug 'Andrewradev/switch.vim'
Plug 'ap/vim-css-color'
" Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'chr4/nginx.vim'
" Plug 'chrisbra/csv.vim', { 'for': 'csv' }
" Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-tmux-navigator'
Plug 'conradirwin/vim-bracketed-paste'
" Plug 'c9s/vikube.vim'
" Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
" Plug 'direnv/direnv.vim'
" Plug 'dNitro/vim-pug-complete', { 'for': 'pug' }
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/' }
Plug 'elzr/vim-json', { 'for': 'json' }
" Plug 'elmcast/elm-vim', { 'for': 'elm' }
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'ervandew/supertab'
Plug 'eugen0329/vim-esearch'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
" Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'], 'branch': 'main' }
Plug 'godlygeek/tabular'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
" Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax'
Plug 'hashivim/vim-terraform'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
" Plug 'herringtondarkholme/yats.vim', { 'for': 'typescript' }
Plug 'honza/vim-snippets'
" Plug 'isomoar/vim-css-to-inline', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'isRuslan/vim-es6', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
" Plug 'janko-m/vim-test'
Plug 'jxnblk/vim-mdx-js'
" Plug 'joukevandermaas/vim-ember-hbs'
Plug 'jparise/vim-graphql'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'gv.vim'
" Plug 'justinmk/vim-sneak'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" Plug 'majutsushi/tagbar'
" Plug 'matt-deacalion/vim-systemd-syntax'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
" Plug 'mattn/vim-sqlfmt', { 'for': 'sql' }
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree'
" Plug 'mhinz/vim-startify'
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'NLKNguyen/cloudformation-syntax.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx', 'typescript', 'vue'] }
" Plug 'othree/xml.vim', { 'for': 'xml' }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
" Plug 'phpstan/vim-phpstan', {'for': 'php'}
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'javascript.jsx', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'posva/vim-vue'
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'rizzatti/dash.vim'
" Plug 'roxma/vim-tmux-clipboard'
" Plug 'RRethy/vim-illuminate'
" Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'sgur/vim-editorconfig'
" Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'sirver/ultiSnips'
" Plug 'skywind3000/asyncrun.vim'
Plug 'sodapopcan/vim-twiggy'
" Plug 'StanAngeloff/php.vim', { 'for': 'php'}
Plug 'stephpy/vim-yaml'
" Plug 'svermeulen/vim-easyclip'
Plug 'tmux-plugins/vim-tmux'
Plug 'tomtom/tComment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'urbainvaes/vim-remembrall'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/PreserveNoEOL'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'wakatime/vim-wakatime'
Plug 'wellle/tmux-complete.vim'
Plug 'w0rp/ale'
" Plug 'yardnsm/vim-import-cost', { 'do': 'yarn install' }
Plug 'yggdroot/indentLine'

call plug#end()

" Enable 256 colors in terminal
set t_Co=256

" Enable syntax highlighting
syntax enable

" Enable indentation for specific filetypes
filetype plugin indent on

" ============================================================================
" Basic key bindings
" ============================================================================

" Remap leader key to space bar
let g:mapleader= ' '
let g:maplocalleader= ' '

" Remap Escape key to jk
cnoremap jk <Esc>
inoremap jk <Esc>
vnoremap jk <Esc>
xnoremap jk <Esc>

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

" Same as above but in terminal
" tnoremap <C-j> <C-w>j
" tnoremap <C-k> <C-w>k
" tnoremap <C-h> <C-w>h
" tnoremap <C-l> <C-w>l

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

" Preview markdown files in Marked.app (Mac-only)
nnoremap <leader>mp :MarkedOpen!<CR>
nnoremap <leader>mq :MarkedQuit<CR>

" Save file and quit
nnoremap <leader>q :wq<CR>

" Quit without saving
nnoremap <Leader>x :q!<cr>

" Save file
nnoremap <leader>s :write<CR>
nnoremap <leader>w :update<CR>

" Source .vimrc on save
augroup sourcevimrc
  autocmd!
  autocmd sourcevimrc BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

" Toggle TagBar
" nnoremap <leader>t :TagbarToggle<CR>

" Toggle Twiggy
nnoremap <leader>t :Twiggy<CR>

" Toggle Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Run terminal commands
nnoremap <leader>vp :VimProcBang<space>

" Enable spellchecking for Markdown
autocmd filetype markdown setlocal spell

" Disable highlighting of non-capitalized terms in Markdown
set spellcapcheck=

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
set shell=/usr/local/bin/bash

" Editorconfig settings (unofficial plugin)
let g:editorconfig_blacklist = {
    \ 'filetype': ['git.*', 'fugitive'],
    \ 'pattern': ['\.un~$']}

" Fugitive shotcuts
nnoremap <leader>gd :<Leader>Gdiff<cr>gg<c-n>
nnoremap <leader>gs :<Leader>Gstatus<cr>

" Core Vim settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup

set clipboard+=unnamed
" set clipboard=unnamed

" set pastetoggle=<F9>
set t_RS=

set colorcolumn=+1
set complete-=i
set completeopt=menuone,preview
set directory=$HOME/.vim/swap
set display+=lastline
set expandtab
set formatoptions+=j
set hidden
set history=1000
set ignorecase
set laststatus=2
set lazyredraw
set list
set listchars=tab:\|\ ,
set modeline
set modelines=2
set mouse=a
silent! set ttymouse=xterm2
set noerrorbells
set nofoldenable
set nojoinspaces
set noshowmode
set nostartofline
set nrformats=hex
set number
set numberwidth=5
set relativenumber
set ruler
scriptencoding utf-8
set scrolloff=5
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
set spellfile=$HOME/.vim-spell-en.utf-8.add
set synmaxcol=1000
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
set wrapmargin=0

" Display column at 80 characters
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>
nnoremap <leader>bd :bd<cr>

" ----------------------------------------------------------------------------
" Quickfix
" ----------------------------------------------------------------------------
nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" ----------------------------------------------------------------------------
" Fix for Y yanking text both before and after cursor
" ----------------------------------------------------------------------------
" nnoremap Y y$

" ----------------------------------------------------------------------------
" gist.vim
" ----------------------------------------------------------------------------
" Make gists private by default
let g:gist_post_private = 1

" Open browser after posting gist
let g:gist_open_browser_after_post =1

" ----------------------------------------------------------------------------
" matchit.vim
" ----------------------------------------------------------------------------
runtime macros/matchit.vim

" ----------------------------------------------------------------------------
" undotree
" ----------------------------------------------------------------------------
let g:undotree_WindowLayout = 2

" ----------------------------------------------------------------------------
" YouCompleteMe, UltiSnips, and Supertab
" ----------------------------------------------------------------------------
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Split UltiSnipsEditSplit vertically
let g:UltiSnipsEditSplit='vertical'

" ----------------------------------------------------------------------------
" javascript-libraries-syntax
" ----------------------------------------------------------------------------
let g:used_javascript_libs = 'react,vue'

" ----------------------------------------------------------------------------
" vim-airline
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled= 1
let g:airline#extensions#tabline#enabled = 1

" ----------------------------------------------------------------------------
" enable font italics
" ----------------------------------------------------------------------------
hi Comment    gui=italic
" hi Constant   gui=italic
" hi htmlArg    gui=italic
" hi Identifier gui=italic
" hi PreProc    gui=italic
" hi Special    gui=italic
" hi Statement  gui=italic
" hi Todo       gui=italic
" hi Type       gui=italic
" hi Underlined gui=italic

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
hi Comment    cterm=italic
" hi Constant   cterm=italic
" hi htmlArg    cterm=italic
" hi Identifier cterm=italic
" hi PreProc    cterm=italic
" hi Special    cterm=italic
" hi Statement  cterm=italic
" hi Todo       cterm=italic
" hi Type       cterm=italic
" hi Underlined cterm=italic

" Tmux and italics fix
" set t_ut=

" ----------------------------------------------------------------------------
" incsearch.vim
" ----------------------------------------------------------------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ----------------------------------------------------------------------------
" incsearch-fuzzy.vim
" ----------------------------------------------------------------------------
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" ----------------------------------------------------------------------------
" vim-better-whitespace
" ----------------------------------------------------------------------------
augroup whitespace
  autocmd BufEnter * EnableStripWhitespaceOnSave
augroup END

" ----------------------------------------------------------------------------
" vim-jsx
" ----------------------------------------------------------------------------
" let g:jsx_ext_required = 1

" ----------------------------------------------------------------------------
" vim-esearch
" ----------------------------------------------------------------------------
let g:esearch = {
  \ 'adapter':    'rg',
  \ 'backend':    'vimproc',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

" ----------------------------------------------------------------------------
" tmux-complete
" ----------------------------------------------------------------------------
let g:tmuxcomplete#trigger = 'omnifunc'

" ----------------------------------------------------------------------------
"  vim-prettier
" ----------------------------------------------------------------------------
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync

" max line length that prettier will wrap on
" let g:prettier#config#print_width = 80

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
" let g:prettier#config#semi = 'true'
let g:prettier#config#semi = 'false'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" let g:prettier#config#jsx_bracket_same_line = 'true'

" none|es5|all
" let g:prettier#config#trailing_comma = 'none'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
" let g:prettier#config#prose_wrap = 'preserve'

" ----------------------------------------------------------------------------
" vim-terraform
" ----------------------------------------------------------------------------
let g:terraform_align = 1

" ----------------------------------------------------------------------------
" ale
" ----------------------------------------------------------------------------
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

let g:ale_linters = {
  \ 'awk': ['gawk'],
  \ 'bash': ['shellcheck'],
  \ 'bourne_shell': ['shellcheck'],
  \ 'c': ['gcc','clang','clang-format'],
  \ 'c++': ['gcc','clang','clang-format'],
  \ 'chef': ['foodcritic'],
  \ 'cmake': ['cmakelint'],
  \ 'css': ['stylelint','prettier'],
  \ 'Dockerfile': ['hadolint'],
  \ 'elm': ['elm-format', 'elm-make'],
  \ 'fortran': ['gcc'],
  \ 'fusion-lint': ['fusion-lint'],
  \ 'graphql': ['gqlint'],
  \ 'go': ['gofmt','go vet','golint','gosimple','staticcheck'],
  \ 'handlebars': ['ember-template-lint'],
  \ 'haml': ['haml-lint'],
  \ 'html': ['htmlhint','tidy'],
  \ 'javascript': ['standard'],
  \ 'javascript.jsx': ['standard'],
  \ 'json': ['jsonlint','prettier'],
  \ 'markdown': ['proselint','vale'],
  \ 'python': ['yapf','pylint'],
  \ 'reStructredText': ['proselint'],
  \ 'php': ['phpstan'],
  \ 'ruby': ['rubocop','reek'],
  \ 'rust': ['rustc'],
  \ 'scss': ['sass-lint','stylelint','prettier'],
  \ 'sql': ['sqlint'],
  \ 'terraform': ['tflint'],
  \ 'text^': ['proselint','vale'],
  \ 'typescript': ['tslint'],
  \ 'vim': ['vint'],
  \ 'vue': ['prettier'],
  \ 'xml': ['xmllint'],
  \ 'yaml': ['yamllint']
  \}

let g:ale_fixers = {
  \ 'css': ['stylelint'],
  \ 'javascript': ['standard'],
  \ 'javascript.jsx': ['standard'],
  \ 'json': ['fixjson','prettier'],
  \ 'python': ['yapf'],
  \ 'scss': ['stylelint'],
  \ 'sh': ['shfmt']
  \}

let g:ale_sh_shfmt_options = 'shfmt -i 2 -s'

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nnoremap <Leader>af :ALEFix<CR>

  " \ 'javascript': ['eslint','standard','flow','prettier','prettier-eslint','stylelint'],
  " \ 'javascript.jsx': ['eslint','standard','flow','prettier','prettier-eslint','stylelint'],
  "
" autocmd bufwritepost {*.js,*.jsx} silent !standard --fix %
" set autoread

" Quickly open terminal
" cnoremap <leader>z :terminal<CR>
" inoremap <leader>z :terminal<CR>
" nnoremap <leader>z :terminal<CR>
" vnoremap <leader>z :terminal<CR>
" xnoremap <leader>z :terminal<CR>
"
" vim-sneak
" let g:sneak#label = 1
