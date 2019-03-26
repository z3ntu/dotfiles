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
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
call plug#end()

" Set the colorscheme to monokai or messy, depending on the Konsole theme
if $KONSOLE_PROFILE_NAME == 'Light'
  colorscheme messy
else
  colorscheme monokai
endif

" Set tabs to spaces
set ts=4 sw=4 et
" Enable line numbers
set number
" Set line endings to unix automagically
set ff=unix
" Set the clipboard to the system clipboard
set clipboard+=unnamedplus
" Display tabs as character
set list

" Force the cursor onto a new line after 72 characters in Git commit messages
" See https://csswizardry.com/2017/03/configuring-git-and-vim/
autocmd FileType gitcommit set textwidth=72
" Colour the 73rd column so that we don’t type over our limit
autocmd FileType gitcommit set colorcolumn=+1
" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

" Delete to black hole register
" See https://stackoverflow.com/a/11994072/3527128
nnoremap d "_d
vnoremap d "_d
nnoremap <Del> "_x
vnoremap <Del> "_x
" Keep current register after pasting
vnoremap p "_dP
