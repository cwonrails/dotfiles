if &compatible
  set nocompatible
end

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'andrewradev/splitjoin.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-toml'
Plug 'chr4/nginx.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'conradirwin/vim-bracketed-paste'
Plug 'dNitro/vim-pug-complete'
Plug 'digitaltoad/vim-pug'
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/' }
Plug 'elzr/vim-json'
Plug 'embear/vim-localvimrc'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'ervandew/supertab'
Plug 'eugen0329/vim-esearch'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'fleischie/vim-styled-components'
Plug 'flowtype/vim-flow'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
" Plug 'hashivim/vim-terraform'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
" Plug 'heavenshell/vim-jsdoc'
Plug 'herringtondarkholme/yats.vim'
Plug 'honza/vim-snippets'
" Plug 'iamcco/markdown-preview.vim'
" Plug 'isobit/vim-caddyfile'
Plug 'isomoar/vim-css-to-inline'
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
" Plug 'jamshedvesuna/vim-markdown-preview'
Plug 'janko-m/vim-test'
" Plug 'joeyespo/grip'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'kewah/vim-stylefmt'
" Plug 'lmeijvogel/vim-yaml-helper'
" Plug 'LnL7/vim-nix'
Plug 'majutsushi/tagbar'
" Plug 'maralla/vim-toml-enhance', { 'depends': 'cespare/vim-toml' }
Plug 'matt-deacalion/vim-systemd-syntax'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/vim-sqlfmt'
Plug 'mattn/webapi-vim'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
" Plug 'mitermayer/vim-prettier', {
"          \ 'do': 'yarn install',
"          \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }
Plug 'mitermayer/vim-prettier', {
         \ 'do': 'yarn install; yarn upgrade --latest',
         \ 'for': 'javascript' }
" Plug 'mlaursen/vim-react-snippets'
" Plug 'moll/vim-node'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mxw/vim-jsx'
" Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/xml.vim'
Plug 'othree/yajs.vim'
" Plug 'pallets/jinja', { 'rtp': '/ext/vim/jinja.vim'}
Plug 'pbrisbin/vim-mkdir'
" Plug 'pearofducks/ansible-vim'
" Plug 'phenomenes/ansible-snippets'
" Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
" Plug 'potatoesmaster/i3-vim-syntax'
Plug 'rhysd/committia.vim'
Plug 'rizzatti/dash.vim'
Plug 'robertbasic/vim-hugo-helper'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
" Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'sgur/vim-editorconfig'
Plug 'shougo/echodoc.vim'
Plug 'shougo/vimproc.vim', {'do': 'make'}
Plug 'sirver/ultiSnips'
" Plug 'sjl/gundo.vim'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-yaml'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'thirtythreeforty/lessspace.vim'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tmux-plugins/vim-tmux'
Plug 'tomtom/tComment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tweekmonster/wstrip.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/PreserveNoEOL'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-syntastic/syntastic'
" Plug 'vimwiki/vimwiki'
Plug 'wakatime/vim-wakatime'
" Plug 'wellle/targets.vim'
Plug 'wellle/tmux-complete.vim'
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

" Toggle NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Show hidden files by default in NERDTree
let g:NERDTreeShowHidden=1

" Show status for files ignored by Git
let g:NERDTreeShowIgnoredStatus = 1

" Save file and quit
nnoremap <leader>q :wq<CR>

" Automatically close quickfix and location list upon closing buffer
:windo if &buftype == "quickfix" || &buftype == "locationlist" | lclose | endif

" Save file
nnoremap <leader>s :write<CR>
nnoremap <leader>w :update<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" Run terminal commands
nnoremap <leader>vp :VimProcBang<space>

" ----------------------------------------------------------------------------
" Save
" ----------------------------------------------------------------------------
nnoremap <leader>s :w<cr>

" ----------------------------------------------------------------------------
" Quit
" ----------------------------------------------------------------------------
nnoremap <Leader>q :wq<cr>
nnoremap <Leader>x :q!<cr>

" Source .vimrc on save
augroup sourcevimrc
  autocmd!
  autocmd sourcevimrc BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

" Toggle TagBar
nnoremap <leader>t :TagbarToggle<CR>

" Toggle Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" Syntastic base settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_id_checkers = 1
let g:syntastic_echo_current_error = 1

" CSS linting
let g:syntastic_css_checkers = ['stylelint']
let g:syntastic_styled_components = ['stylelint']

" Fix highlighting problems for CSS3
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css sass scss setlocal iskeyword+=-
augroup END

" HTML linting
let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy'
let g:syntastic_html_checkers = ['tidy', 'htmlhint']

" Ignore Apple's W3-invalid html code for pinned favicons
let g:syntastic_html_tidy_ignore_errors = [ '<link> proprietary attribute "color"' ]
let g:syntastic_html_tidy_ignore_errors = [
      \   '<link> proprietary attribute "color"',
      \   '<link> proprietary attribute "crossorigin"',
      \   '<link> proprietary attribute "integrity"',
      \   '<script> proprietary attribute "crossorigin"',
      \   '<script> proprietary attribute "integrity"'
      \ ]

" Javascript linting
let g:syntastic_javascript_checkers = ['eslint']

" JSON linting
let g:syntastic_json_checkers = ['jsonlint']

" Pug linting
let g:syntastic_pug_checkers = ['pug_lint']

" Shell / bash script linting
let g:syntastic_sh_checkers = ['shellcheck']

" Typescript linting
let g:syntastic_sh_checkers = ['tslint']

" VimL linting
let g:syntastic_vim_checkers= ['vint']

" Enable spellchecking for Markdown
autocmd filetype markdown setlocal spell

" Disable highlighting of non-capitalized terms in Markdown
set spellcapcheck=

" Recognize some config files as JSON
autocmd BufRead,BufNewFile .babelrc set filetype=json

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
set shell=/usr/local/bin/bash

" Editorconfig settings (official plugin)
" let g:Editorconfig_core_mode = 'external_command'
" let g:Editorconfig_exec_path = ['usr/local/bin/editorconfig']
" let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

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
" autoformat
" ----------------------------------------------------------------------------
" nnoremap <leader>af :Autoformat<cr>

" " autoformat standard on save (disable above if using)
" autocmd bufwritepost *.js silent !standard --fix %
" set autoread

" ----------------------------------------------------------------------------
" gist.vim
" ----------------------------------------------------------------------------
" Make gists private by default
let g:gist_post_private = 1

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
let g:jsx_ext_required = 0

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
let g:prettier#exec_cmd_async = 1

" ----------------------------------------------------------------------------
"  vim-devicons
" ----------------------------------------------------------------------------
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_tabline = 1
let g:webdevicons_enable_statusline = 1

" ----------------------------------------------------------------------------
"  vim-flow
" ----------------------------------------------------------------------------
let g:flow#autoclose = 1
let g:flow#enable = 0

" ----------------------------------------------------------------------------
" vim-localvimrc
" ----------------------------------------------------------------------------
let g:localvimrc_sandbox = 1
let g:localvimrc_persistent = 1
let g:localvimrc_whitelist='$HOME/github/forks/cwoncasper'
