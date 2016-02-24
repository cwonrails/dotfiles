if &compatible
  set nocompatible
end
set viminfo=

call plug#begin('~/.vim/bundle')
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'davidosomething/syntastic-hbstidy'
Plug 'dbakker/vim-lint'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'docker/docker', { 'rtp': '/contrib/syntax/vim/', 'for': 'Dockerfile' }
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'google/vim-jsonnet'
Plug 'google/vim-maktaba'
Plug 'google/vim-searchindex'
Plug 'google/vim-syncopate'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax'
Plug 'honza/vim-snippets'
Plug 'ingydotnet/yaml-vim'
Plug 'isRuslan/vim-es6'
Plug 'jbgutierrez/vim-babel', { 'for': 'javascript' }
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs', { 'for': 'NERDTreeToggle' }
Plug 'JulesWang/css.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'KabbAmine/gulp-vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'leafgarland/typescript-vim'
Plug 'lfv89/vim-interestingwords'
Plug 'low-ghost/nerdtree-fugitive', { 'on': 'NerdTreeToggle' }
Plug 'lukaszkorecki/workflowish'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'mhinz/vim-startify'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'mxw/vim-jsx'
Plug 'nginx/nginx', { 'branch': 'master', 'rtp': 'contrib/vim' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/csscomplete.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/html5.vim'
Plug 'othree/jspc.vim'
Plug 'othree/yajs.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'pearofducks/ansible-vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'rhysd/committia.vim'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Sirver/Ultisnips'
Plug 'stephenway/postcss.snippets'
Plug 'suan/vim-instant-markdown'
Plug 'syngan/vim-vimlint', { 'for': 'vim' }
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tmux-plugins/vim-tmux'
Plug 'todesking/vint-syntastic', { 'for': 'vim' }
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/tComment'
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'wellle/targets.vim'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ynkdir/vim-vimlparser', { 'for': 'vim' }
" Plug 'ryanoasis/vim-devicons'
call plug#end()

" Enable 256 colors in terminal
set t_Co=256

" Enable syntax highlighting
syntax enable

" Enable filetype-specific indentation
filetype plugin indent on

" Reload .vimrc on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC | AirlineRefresh
augroup END " }

" Map leader to space bar
let mapleader = ' '
let maplocalleader = ' '

" Use jk to exit insert mode
inoremap jk <esc>

" Set theme
set background=dark
colorscheme solarized

" Quickly comment and uncomment lines
nnoremap <leader>c :TComment<CR>

" Run Terminal command
nnoremap <leader>vp :VimProcBang<space>

" Create vertical and horizontal splits
set splitbelow
set splitright

" Navigate by visual rather than actual lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Clear search highlighting
nnoremap <leader>h :noh<CR>

" Strip whitespace on save
let g:StripWhitespaceOnSave=1
autocmd BufWritePre * StripWhitespace

" Check for syntax errors on open
let g:syntastic_check_on_open=1
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1

" Move between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Always use vertical diffs
set diffopt+=filler,vertical

" Save current buffer
nnoremap <leader>s :w<CR>

" Save current buffer and quit
nnoremap <leader>q :wq<CR>

" Quit without saving
nnoremap <leader>x :q!<CR>

" Enable saving files not opened with 'sudo vim'
cmap w!! w !sudo tee > /dev/null %

" FZF
nnoremap <leader>fzf :FZF<CR>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Get Syntastic info for current buffer
nnoremap <leader>si :SyntasticInfo<CR>

" Toggle Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" Toggle Undotree
nnoremap <leader>u :UndotreeToggle<CR>

" CSS linting
let g:syntastic_css_checkers=['stylelint']

" Handlebars linting
let g:syntastic_filetype_map = {
  \ 'html.handlebars': 'handlebars',
  \ }

let g:syntastic_handlebars_checkers = ['handlebars', 'hbstidy']

" HTML linting
let g:syntastic_html_checkers=['tidy']

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

" Automatically recognize filetypes by extension
autocmd BufRead,BufNewFile *.coffee set filetype=coffeescript
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

" Enable spellchecking for Markdown
autocmd fileType markdown setlocal spell

" Disable highlighting of non-capitalized terms
set spellcapcheck=

" Core settings
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=$HOME/.vim/backup
set clipboard=unnamed
set colorcolumn=+1
set complete-=i
set completeopt=longest,menuone,preview
set directory=$HOME/.vim/swap
set display+=lastline
set encoding=utf-8
set expandtab
set foldlevelstart=99
" set formatoptions+=j
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
set mouse=a
set nocursorline
set noerrorbells
set nojoinspaces
set noshowmode
set nostartofline
set novisualbell
set nrformats=hex
set number
set numberwidth=5
set relativenumber
set ruler
set scrolloff=5
set sessionoptions-=options
set shortmess=aIT
set showcmd
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set tabpagemax=50
set textwidth=80
set ttimeout
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

silent! set cryptmethod=blowfish2

" Display column at 80 characters
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Load matchit.vim if the user hasn't installed a newer version.
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
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#branch#enanbled = 1
  let g:airline#extensions#hunks#enabled = 1
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#tabline#buffer_nr_format = '%s '
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline_theme='solarized'
augroup END

" ----------------------------------------------------------------------------
" NERDTreeGit
" ----------------------------------------------------------------------------

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

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

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

