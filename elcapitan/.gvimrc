" Use Solarized Light theme
set background=dark
colorscheme solarized

" Use 14pt Source Code Pro font
set guifont=Source\ Code\ Pro:h14

" Disable cursor blinking in all modes
set guicursor+=a:blinkon0

" Disable GUI dialogs
set guioptions+=c

" Hide menubar
set guioptions-=m

" Hide left-hand scrollbar in vertical splits
set guioptions-=L

" Hide bottom + left and right-hand scrollbars
set guioptions+=rlb
set guioptions-=rlb

augroup reload_vimrc
    autocmd!
    autocmd bufwritepost $MYGVIMRC nested source $MYGVIMRC
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

