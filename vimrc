" setup vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" default
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" UI n stuff 
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'  
Plugin 'bling/vim-airline'  
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} 

" y not type less
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'int3/vim-taglist-plus'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/syntastic'

" better syntax
Plugin 'jelera/vim-javascript-syntax'

" file nav
Plugin 'kien/ctrlp.vim'   
Plugin 'scrooloose/nerdtree'  
Plugin 'bling/vim-bufferline'
Plugin 'git://git.wincent.com/command-t.git'

" handy tools
Plugin 'sjl/gundo.vim' 
Plugin 'matze/vim-move' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'

" version vontrol 
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" general conf
set backspace=2           " make backspace work like all other apps
set number                " turn on the line numbers
set incsearch             " vim starts searching while typing search string
set tabstop=2             " tabset three spaces
set shiftwidth=2          " tabset three space
set ff=mac                " set file format to mac
syntax enable             " syntax always on
set wildmenu              " enable tab completion
set wildmode=list:longest " configure tab completion
set t_Co=256              " set termcolors to 256
set encoding=utf8         " set standared encoding as utf8
set ruler                 " allways show the current position
set laststatus=2          " allways show the status line
set cursorline            " allways show a line where the curser is
colorscheme jellybeans    " set the color scheme
set undodir=~/.vim/undoHist
set undofile

function Qsesh()
	:mksession! Session.vim
	:wqall
endfunction

" Key Bindings
" set doble tat i key to equal escape
imap ii <Esc>
let mapleader = "\<Space>" " leader = spaecbar
map ZZ :exec Qsesh()<CR>
" change hop to beging and end of line
noremap H ^
noremap L $

" switch windows with leader hjlk
map wv <C-w>v
map wh <C-w>h
map ww <C-w>w
map wh <C-W>h
map wj <C-W>j
map wk <C-W>k
map wl <C-W>l
map wq :q<CR>

" get wordcound
noremap <leader>wc :!wc -w %<CR>
" syntastic cheack
nnoremap <silent> <leader>s :SyntasticCheck<CR>
" open nerdtree
nnoremap <silent> <leader>t :TlistToggle<CR>
" open gundo
nnoremap <silent> <leader>u :GundoToggle<CR>
" open ctl-p
nnoremap <silent> <leader>p :CtrlP<CR>

" Vim-Airline
let g:airline_theme = 'jellybeans'          " Set theme
let g:airline_powerline_fonts = 1           " Use powerline fonts for
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

" vim moce setup
let g:move_key_modifier = 'C'

" Snipmate
nnoremap <silent> <leader>\ <esc>a<Plug>snipMateNextOrTrigger
smap <silent> <leader>\ <Plug>snipMateNextOrTrigger

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive',     
                          \ 'active_filetypes': [],     
                          \ 'passive_filetypes': [] } 
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 1

" Utilisnips
let g:UltiSnipsExpandTrigger="<tab>"        " Trigger snippets with TAB
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit=" vertical"

if has('mouse')		   " if there is a mouse avalible allow it
  set mouse=a
endif
