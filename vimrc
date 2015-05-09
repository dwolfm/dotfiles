set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" UI n stuff 
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'  
Plugin 'bling/vim-airline'  
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'int3/vim-taglist-plus'

" y not type less
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'


" syntax
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'marijnh/tern_for_vim'


Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
" file nav
Plugin 'kien/ctrlp.vim'   
Plugin 'matze/vim-move' 
Plugin 'scrooloose/nerdtree'  
Plugin 'bling/vim-bufferline'

" undu
Plugin 'sjl/gundo.vim' 

" version vontrol 
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-fugitive'

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

map! ii <Esc>        "set doble tat i key to equal escape
set backspace=2
set number           "turn on the line numbers
set incsearch  		   "sets to partial searching
set tabstop=3		     "tabset three spaces
set shiftwidth=3
set ff=mac 			     "set file format to mac
syntax enable				 "syntax always on
" colorscheme zellner
set wildmenu
set wildmode=list:longest
set t_Co=256
set encoding=utf-8
" set ruler
set laststatus=2
" set cursorline


"Key Bindings
"leader = spaec
let mapleader = "\<Space>"

"change hop to beging and end of line
noremap H ^
noremap L $

" get wordcound
noremap <leader>wc :!wc -w %<CR>
" syntastic cheack
nnoremap <silent> <leader>s :SyntasticCheck<CR>
"open nerdtree
nnoremap <silent> <leader>t :TlistToggle<CR>
"open gundo
nnoremap <silent> <leader>u :GundoToggle<CR>
"open ctl-p
nnoremap <silent> <leader>p :CtrlP<CR>

" Vim-Airline
 let g:airline_theme = 'jellybeans'          " Set theme
let g:airline_powerline_fonts = 1           " Use powerline fonts for

"let g:airline_enable_syntastic = 1          " Show syntastic output in
" let g:airline_enable_branch = 1             " Show current Git branch
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

"vim moce setup
let g:move_key_modifier = 'C'

" Snipmate
imap \ <esc>a<Plug>snipMateNextOrTrigger
smap \ <Plug>snipMateNextOrTrigger

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive',     
                          \ 'active_filetypes': [],     
                          \ 'passive_filetypes': [] } 
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 1

"Utilisnips
let g:UltiSnipsExpandTrigger="<tab>"        " Trigger snippets with TAB
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

if has('mouse')		   "if there is a mouse avalible allow it
  set mouse=a
endif

colorscheme jellybeans

