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
"	Plug 'kien/ctrlp.vim'
	Plug 'ayu-theme/ayu-vim'        
        " Before install fzf (apt or brew)
	Plug 'junegunn/fzf.vim'	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

set number
set nocindent
set nosmartindent
set noautoindent
set indentexpr=
set mouse=a

set termguicolors
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

autocmd VimEnter * NERDTree

