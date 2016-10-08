" Util function
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction


" Install vim-plug if it's not installed.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


" vim-plug plugins - install with :PlugInstall
call plug#begin()
Plug 'crusoexia/vim-monokai'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

" Set the colorscheme to monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
colorscheme monokai

" NERDTree: Open automatically
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" Close vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set tabs to spaces
set ts=4 sw=4 et
" Enable line numbers
set number
