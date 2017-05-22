" Install vim-plug if it's not installed.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


" vim-plug plugins - install with :PlugInstall
call plug#begin()
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
call plug#end()

" Set the colorscheme to monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
colorscheme monokai

" Set tabs to spaces
set ts=4 sw=4 et
" Enable line numbers
set number
" Set line endings to unix automagically
set ff=unix
