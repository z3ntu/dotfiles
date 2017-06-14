" Install vim-plug if it's not installed.
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" vim-plug plugins - install with :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'jakwings/vim-colors'
call plug#end()

" Set the colorscheme to monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
colorscheme monokai
"colorscheme messy

" Set tabs to spaces
set ts=4 sw=4 et
" Enable line numbers
set number
" Set line endings to unix automagically
set ff=unix
