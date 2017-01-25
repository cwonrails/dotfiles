if &compatible
  set nocompatible
end

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ap/vim-css-color'
" Plug 'beloglazov/vim-online-thesaurus'
Plug 'cakebaker/scss-syntax.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Chiel92/vim-autoformat'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'digitaltoad/vim-pug'
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim' }
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'fleischie/vim-styled-components'
Plug 'hail2u/vim-css3-syntax'
Plug 'haya14busa/incsearch.vim'
Plug 'honza/vim-snippets'
Plug 'inside/vim-search-pulse'
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kewah/vim-stylefmt'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
" Plug 'maralla/completor.vim', { 'do': 'make js' }
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree'
" Plug 'mhinz/vim-signify'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
" Plug 'neomake/neomake'
Plug 'nginx/nginx', { 'rtp': '/contrib/syntax/vim/' }
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
" Plug 'rhysd/vim-grammarous'
Plug 'rizzatti/dash.vim'
Plug 'scrooloose/syntastic'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/neosnippet-snippets'
Plug 'Sirver/UltiSnips'
Plug 'stephpy/vim-yaml'
Plug 'ternjs/tern_for_vim', { 'dir': '~/.vim/plugged/tern_for_vim', 'do': 'npm install' }
Plug 'thirtythreeforty/lessspace.vim'
Plug 'tomtom/tComment_vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'travisjeffery/vim-auto-mkdir'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'wakatime/vim-wakatime'
Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteMe', 'do': './install.py' }
Plug 'Yggdroot/indentline'

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
colorscheme solarized
let g:solarized_termtrans=1

" Comment one or more lines
nnoremap <leader>c :TComment<CR>

" Get current filetype
nnoremap <leader>ft :set filetype?<CR>

" Preview markdown files in Marked.app on Mac
nnoremap <leader>mp :MarkedOpen!<CR>
nnoremap <leader>mq :MarkedQuit<CR>

" Save file and quit
nnoremap <leader>q :wq<CR>

" Automatically close quickfix and location list upon closing buffer
:windo if &buftype == "quickfix" || &buftype == "locationlist" | lclose | endif

" Save file
nnoremap <leader>s :write<CR>
nnoremap <leader>w :update<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" ----------------------------------------------------------------------------
" Save
" ----------------------------------------------------------------------------
nnoremap <leader>s :w<cr>

" ----------------------------------------------------------------------------
" Quit
" ----------------------------------------------------------------------------
nnoremap <Leader>q :wq<cr>
nnoremap <Leader>x :q!<cr>

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
let g:syntastic_javascript_checkers = ['eslint', 'standard']

" JSON linting
let g:syntastic_json_checkers = ['jsonlint']

" Pug linting
let g:syntastic_pug_checkers = ['pug_lint']

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Shell script / bash linting
let g:syntastic_sh_checkers = ['shellcheck']

" Mark various *.rc files as JSON
autocmd BufRead,BufNewFile .{babel,eslint,stylelint}rc set filetype=json

" Enable spellchecking for Markdown
autocmd filetype markdown setlocal spell

" Disable highlighting of non-capitalized terms in Markdown
set spellcapcheck=

" Allow saving of files as sudo if not opened with sudo vim
cmap w!! w !sudo tee > /dev/null %

" Make vim use homebrew-installed bash
set shell=/usr/local/bin/bash

" Editorconfig settings
let g:EditorConfig_core_mode = 'external_command'
let g:Editorconfig_exec_path = '/usr/local/bin/editorconfig'

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
nnoremap <leader>af :Autoformat<cr>

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

" Pulses the first match after hitting the enter key
autocmd! User IncSearchExecute
autocmd User IncSearchExecute :call search_pulse#Pulse()

" ---------------------------------------------------------------------------
" lessspace.vim
" ---------------------------------------------------------------------------
let g:lessspace_blacklist = ['python']

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
let g:UltiSnipsEditSplit="vertical"

" ----------------------------------------------------------------------------
" javascript-libraries-syntax
" ----------------------------------------------------------------------------
let g:used_javascript_libs = 'react,flux,vue,requirejs,handlebars,jquery'

" ----------------------------------------------------------------------------
" vim-airline
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ----------------------------------------------------------------------------
" vim-signify
" ----------------------------------------------------------------------------
" let g:signify_vcs_list = ['git']

" ----------------------------------------------------------------------------
" enable font italics
" ----------------------------------------------------------------------------
hi htmlArg gui=italic
hi Comment gui=italic
" hi Constant   gui=italic
" hi Identifier gui=italic
" hi PreProc    gui=italic
" hi Special    gui=italic
" hi Statement  gui=italic
" hi Todo       gui=italic
hi Type         gui=italic
" hi Underlined gui=italic

hi htmlArg    cterm=italic
hi Comment    cterm=italic
" hi Constant   cterm=italic
" hi Identifier cterm=italic
" hi PreProc    cterm=italic
" hi Special    cterm=italic
" hi Statement  cterm=italic
" hi Todo       cterm=italic
hi Type       cterm=italic
" hi Underlined cterm=italic

" ----------------------------------------------------------------------------
" completor.vim
" ----------------------------------------------------------------------------
" let g:completor_python_binary = '/usr/local/bin/python'
" let g:completor_racer_binary = '$HOME/.cargo/bin/race'
" let g:completer_gocode_binary = '$HOME/go/bin/gocode'
" let g:completor_node_binary = '/usr/local/bin/node'

" ----------------------------------------------------------------------------
" neomake
" ----------------------------------------------------------------------------
" autocmd! BufWritePost * Neomake
" let g:neomake_css_enabled_makers = ['stylelint']
" let g:neomake_html_enabled_makers = ['tidy', 'htmlhint']
" let g:neomake_javascript_enabled_makers = ['eslint', 'standard', 'semistandard']
" let g:neomake_json_enabled_makers = ['jsonlint']
" let g:neomake_pug_enabled_makers = ['pug-lint']
" let g:neomake_ruby_enabled_makers = ['rubocop']

" set complete+=kspell
