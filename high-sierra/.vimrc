if &compatible
  set nocompatible
end

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'andrewradev/splitjoin.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'chr4/nginx.vim'
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'conradirwin/vim-bracketed-paste'
Plug 'dNitro/vim-pug-complete', { 'for': 'pug' }
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'jsx'] }
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'jsx'] }
Plug 'ervandew/supertab'
Plug 'eugen0329/vim-esearch'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'fleischie/vim-styled-components'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'herringtondarkholme/yats.vim', { 'for': 'typescript' }
Plug 'honza/vim-snippets'
Plug 'isomoar/vim-css-to-inline'
Plug 'isRuslan/vim-es6'
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
Plug 'janko-m/vim-test'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vader.vim', { 'for': 'vim' }
Plug 'kewah/vim-stylefmt', { 'for': ['css', 'scss'] }
Plug 'majutsushi/tagbar'
Plug 'matt-deacalion/vim-systemd-syntax'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt', { 'for': 'sql' }
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree'
" Plug 'metakirby5/codi.vim'
" Plug 'mhinz/vim-startify'
Plug 'prettier/vim-prettier', {
  \ 'do': 'rm -rf yarn.lock node_modules && yarn install',
  \ 'for': ['javascript', 'json', 'graphql'] }
Plug 'mxw/vim-jsx'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'jsx'] }
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'othree/xml.vim', { 'for': 'xml' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'pbrisbin/vim-mkdir'
Plug 'phpstan/vim-phpstan', {'for': 'php'}
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'rizzatti/dash.vim'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'sgur/vim-editorconfig'
Plug 'shougo/echodoc.vim'
Plug 'shougo/vimproc.vim', { 'do': 'make' }
Plug 'sirver/ultiSnips'
Plug 'StanAngeloff/php.vim', { 'for': 'php'}
Plug 'stephpy/vim-yaml'
Plug 'ternjs/tern_for_vim', { 'do': 'yarn install' }
Plug 'tmux-plugins/vim-tmux'
Plug 'tomtom/tComment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/PreserveNoEOL'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'wakatime/vim-wakatime'
Plug 'wellle/tmux-complete.vim'
Plug 'w0rp/ale'
Plug 'yggdroot/indentLine'
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }

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

" Open new split panes to right and bottom
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=filler,vertical

" Choose colorscheme
set background=dark
" set background=light
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
nnoremap <leader>t :TagbarToggle<CR>

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
set clipboard=unnamed
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
nnoremap Y y$

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
let g:used_javascript_libs = 'react,vue,flux,handlebars,jquery,underscore'

" ----------------------------------------------------------------------------
" vim-airline
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ----------------------------------------------------------------------------
" enable font italics
" ----------------------------------------------------------------------------
" hi htmlArg gui=italic
hi Comment gui=italic
" hi Constant   gui=italic
" hi Identifier gui=italic
" hi PreProc    gui=italic
" hi Special    gui=italic
" hi Statement  gui=italic
" hi Todo       gui=italic
" hi Type       gui=italic
" hi Underlined gui=italic

" hi htmlArg    cterm=italic
hi Comment    cterm=italic
" hi Constant   cterm=italic
" hi Identifier cterm=italic
" hi PreProc    cterm=italic
" hi Special    cterm=italic
" hi Statement  cterm=italic
" hi Todo       cterm=italic
" hi Type       cterm=italic
" hi Underlined cterm=italic

" Tmux and italics fix
set t_ut=

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
" WStrip.vim
" ----------------------------------------------------------------------------
let g:wstrip_auto = 1

" ----------------------------------------------------------------------------
" vim-jsx
" ----------------------------------------------------------------------------
let g:jsx_ext_required = 1

" ----------------------------------------------------------------------------
" vim-esearch
" ----------------------------------------------------------------------------
let g:esearch = {
  \ 'adapter':    'ag',
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
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1

" ----------------------------------------------------------------------------
" ale settings
" ----------------------------------------------------------------------------
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_open_list = 1
" let g:ale_set_loclist = 1
" let g:ale_set_quickfix = 0
let g:ale_lint_delay = 1000
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

" Check JSX files with both stylelint and eslint
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}

let g:ale_linters = {
  \ 'asm': ['gcc'],
  \ 'ansible': ['ansible-lint'],
  \ 'asciidoc': ['proselint', 'write-good'],
  \ 'awk': ['gawk'],
  \ 'bash': ['-n flag','shellcheck'],
  \ 'bourne_shell': ['-n flag','shellcheck'],
  \ 'c': ['gcc','clang','clang-format'],
  \ 'c++': ['gcc','clang','clang-format'],
  \ 'chef': ['foodcritic'],
  \ 'cmake': ['cmakelint'],
  \ 'css': ['stylelint','prettier'],
  \ 'Dockerfile': ['hadolint'],
  \ 'elm': ['elm-format', 'elm-make'],
  \ 'fortran': ['gcc'],
  \ 'fusion-lint': ['fusion-lint'],
  \ 'go': ['gofmt','go vet','golint','gosimple','staticcheck'],
  \ 'graphql': ['gqlint'],
  \ 'haml': ['haml-lint'],
  \ 'handlebars': ['ember-template-lint'],
  \ 'html': ['htmlhint','tidy'],
  \ 'javascript': ['eslint','standard','flow','prettier','prettier-eslint'],
  \ 'json': ['jsonlint','prettier'],
  \ 'lua': ['luacheck'],
  \ 'markdown': ['proselint','vale'],
  \ 'objective-c': ['clang'],
  \ 'objective-c++': ['clang'],
  \ 'python': ['flake8','pycodestyle','yapf'],
  \ 'reStructredText': ['proselint'],
  \ 'php': ['phpstan'],
  \ 'ruby': ['rubocop','reek'],
  \ 'rust': ['rustc'],
  \ 'sass': ['sass-lint','stylelint'],
  \ 'scala': ['scalac','scalastyle'],
  \ 'scss': ['sass-lint','stylelint','prettier'],
  \ 'slim': ['slimt-lint'],
  \ 'sql': ['sqlint'],
  \ 'stylus': ['stylelint'],
  \ 'texinfo': ['proselint','write-good'],
  \ 'text^': ['proselint','vale'],
  \ 'typescript': ['tslint'],
  \ 'verilog': ['iverilog','verilator'],
  \ 'vim': ['vint'],
  \ 'vim help^': ['proselint','write-good'],
  \ 'xml': ['xmllint'],
  \ 'yaml': ['yamllint']
  \}

let g:ale_fixers = {
  \ 'javascript': ['eslint','prettier'],
  \ 'sh': 'shfmt'
  \}

let g:ale_completion_enabled = 1

let g:ale_sh_shfmt_options = '-i 2'

" vim-better-whitespace
augroup whitespace
  autocmd BufEnter * EnableStripWhitespaceOnSave
augroup END

" recognize filetypes
augroup Setfiletype
  au BufNewFile,BufRead *.csv setfiletype csv
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  au BufNewFile,BufRead *.jinja2,*.j2,*.jinja,*.nunj*,*.njk set filetype=jinja
  au BufNewFile,BufRead *.vue setfiletype vue
augroup END

" vim-shfmt
let g:shfmt_extra_args = '-i 2'
