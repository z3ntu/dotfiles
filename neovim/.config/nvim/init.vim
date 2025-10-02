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
Plug 'Thesola10/vim-colors', { 'commit': 'f48c30321543ab05253cd1ccd383ce36fc793dd3' }
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'gpanders/vim-scdoc'
call plug#end()

" Set the colorscheme to monokai or messy, depending on the Konsole theme
" See https://cgit.kde.org/konsole.git/commit/?id=9e3a30fdca2078e04bee2315ebd2adf678a81263
let profile_name = system("qdbus6 $KONSOLE_DBUS_SERVICE $KONSOLE_DBUS_SESSION profile")
if trim(profile_name) == 'Light' || filereadable("/tmp/konsole-light-theme")
  colorscheme messy
else
  colorscheme monokai
endif

" Set tabs to spaces
set tabstop=4 shiftwidth=4 expandtab
" Enable line numbers
set number
" Set line endings to unix automagically
set fileformat=unix
" Set the clipboard to the system clipboard
set clipboard+=unnamedplus
" Display tabs as character
set list
" Disable mouse integration
set mouse=

" Force the cursor onto a new line after 72 characters in Git commit messages
" See https://csswizardry.com/2017/03/configuring-git-and-vim/
autocmd FileType gitcommit set textwidth=72
" Colour the 73rd column so that we don’t type over our limit
autocmd FileType gitcommit set colorcolumn=+1
" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

autocmd FileType scdoc set textwidth=80
autocmd FileType scdoc set colorcolumn=+1

" Delete to black hole register
" See https://stackoverflow.com/a/11994072/3527128
nnoremap d "_d
vnoremap d "_d
nnoremap <Del> "_x
vnoremap <Del> "_x
" Keep current register after pasting
vnoremap p "_dP

" Move lines with keybind
" See https://vim.fandom.com/wiki/Moving_lines_up_or_down#Mappings_to_move_lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Disable macro recording
map q <Nop>

" Shortcuts for commit tags
function GetGitTag()
    let name = trim(system("git config user.name"))
    let email = trim(system("git config user.email"))
    return name . " <" . email . ">"
endfunction
iabbrev R-b@ Reviewed-by: <C-R>=GetGitTag()<CR>
iabbrev T-b@ Tested-by: <C-R>=GetGitTag()<CR>
