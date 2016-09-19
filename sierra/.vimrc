if &compatible
  set nocompatible
end

let s:darwin = has('mac')

call plug#begin('~/.vim/plugged')

Plug 'ajh17/VimCompletesMe'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'amperser/proselint', { 'rtp': '/plugins/vim/syntastic_proselint/' }
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-pug', { 'do': 'npm install -g pug-cli pug-lint' }
Plug 'docker/docker', { 'rtp': 'contrib/syntax/vim/' }
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json', { 'do': 'npm install -g jsonlint' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hail2u/vim-css3-syntax'
Plug 'haya14busa/incsearch.vim'
Plug 'inside/vim-search-pulse'
if s:darwin
  Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
endif
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'justinmk/vim-dirvish'
" Plug 'justinmk/vim-sneak'
Plug 'kewah/vim-stylefmt', { 'do': 'npm install -g stylefmt' }
" Plug 'kurayama/systemd-vim-syntax'
Plug 'leafgarland/typescript-vim', { 'do': 'npm install -g typescript' }
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'myw/vim-polymer', { 'do': 'npm install -g polylint' }
Plug 'nginx/nginx', { 'rtp': 'contrib/vim/' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'rhysd/committia.vim'
if s:darwin
  Plug 'rizzatti/dash.vim'
endif
Plug 'scrooloose/syntastic'
Plug 'stephpy/vim-yaml'
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
Plug 'tomtom/tComment_vim'
Plug 'tmux-plugins/vim-tmux'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }

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
let g:solarized_termtrans=1
" let g:solarized_termcolors=256

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Remap fzf to fzf
" nnoremap <leader>fzf :FZF<SPACE>

" Preview markdown files in Marked.app on Mac
if s:darwin
  nnoremap <leader>mp :MarkedOpen!<CR>
  nnoremap <leader>mq :MarkedQuit<CR>
endif

" Save file and quit
nnoremap <leader>q :wq<CR>

" Automatically close quickfix and location list upon closing buffer
" :windo if &buftype == "quickfix" || &buftype == "locationlist" | lclose | endif

" Save file
nnoremap <leader>s :write<CR>
nnoremap <leader>w :update<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" Source .vimrc
nnoremap <leader>sv :source ~/.vimrc<CR>

" Toggle TagBar
nnoremap <leader>t :TagbarToggle<CR>

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
let g:syntastic_check_on_wq = 0
let g:syntastic_id_checkers = 1
let g:syntastic_echo_current_error = 1

" CSS linting
" let g:syntastic_css_checkers = ['stylelint']

" HTML linting
if s:darwin
  let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy'
endif

" let g:syntastic_html_checkers = ['tidy']

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
" let g:syntastic_pug_checkers = ['pug_lint']

" Shell script / bash linting
let g:syntastic_sh_checkers = ['shellcheck']

" Enable spellchecking for Markdown
autocmd filetype markdown setlocal spell

" Activiate conceal for Markdown
" if has ('conceal')
"   autocmd filetype markdown set concealcursor=inv
"   autocmd filetype markdown set conceallevel=2
" endif

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

" Fugitive shotcuts
nnoremap <leader>gd :<Leader>Gdiff<cr>
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
set encoding=utf-8
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
set nojoinspaces
set noshowmode
set nostartofline
set nrformats=hex
set number
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
set sidescrolloff=5
set softtabstop=2
set smartcase
set smartindent
set smarttab
set synmaxcol=128
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
" matchit.vim
" ----------------------------------------------------------------------------
runtime macros/matchit.vim

" ----------------------------------------------------------------------------
" undotree
" ----------------------------------------------------------------------------
let g:undotree_WindowLayout = 2

" ----------------------------------------------------------------------------
" vim-search-pulse
" ----------------------------------------------------------------------------
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
" vim-airline
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_enable_syntastic = 1
let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s '
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#fnamemod = ':t'

" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>
" nnoremap <leader>bd :bd<cr>
" nnoremap <leader>bn :e<space>
" nnoremap <leader>bx :bd!<cr>

" ----------------------------------------------------------------------------
" sneak.vim
" ----------------------------------------------------------------------------
" let g:sneak#streak = 1



