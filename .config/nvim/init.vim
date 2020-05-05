filetype indent off
filetype plugin indent off

call plug#begin('~/.vim/plugged')
        Plug 'stephpy/vim-yaml'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
        Plug 'editorconfig/editorconfig-vim'
	Plug 'mattn/emmet-vim'
	Plug 'scrooloose/syntastic'
	Plug 'alessioalex/syntastic-local-tslint.vim'
call plug#end()

set number
set nocindent
set nosmartindent
set noautoindent
set indentexpr=
set mouse=a
autocmd VimEnter * NERDTree

