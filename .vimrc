" set expandtab
" set ai
" set hlsearch
" highlight Comment ctermfg=green

" Activar colores
syntax on

" Los tabs se convierten en 2 espacios
set autoindent
set smartindent
set expandtab tabstop=2 shiftwidth=2 smarttab softtabstop=2

" Ver numeros de linea
" set number
set number relativenumber

" turn hybrid line numbers on
set relativenumber
set nu rnu

" Ver regla
set ruler

" Ver siempre la barra de estado
set laststatus=2

" Ver comando que se esta ejecutando
set showcmd

" Portapapeles compartido
set clipboard=unnamed
" Si no funciona el copiar en linux instalar vim-gui-common
" set clipboard=unnamedplus

" Activar mouse en modo añadir
set mouse=a

" Codificacion en utf-8
" set encoding=utf-8

" Ver parentesis correspondiente
set showmatch

" Ver numeros de linea relativos (0 linea del cursor)
" set relativenumber

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox' 


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" JSHint Plugin
Plugin 'wookiehangover/jshint.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Activar tema gruvbox
colorscheme gruvbox
set background=dark

" Mapear NERDTree
nmap <C-M> :NERDTreeToggle<CR>

