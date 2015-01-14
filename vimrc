" Vim global configuration.
" Fun stuff.
if has('vim_starting')	
	set nocompatible
	set runtimepath +=~/.vim/bundle/neobundle.vim/
endif

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> NeoBundle configuration

filetype plugin indent on
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shugo/neobundle.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'bling/vim-airline'
NeoBundleCheck

call neobundle#end()

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Common configuration

" Always show the statusbar
set laststatus=2
" Always get line numbers
set nu!
" Turn on syntax highlighting. 
syn on
" Make believe we have 256color terminals
set t_Co=256

" Should really be below in bundle config, but it needs to be here before the
" setup of graphics.
set background=dark

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> GUI+Terminal differences
if has('gui_running')
  set guifont=Envy\ Code\ R\ 10
endif

colorscheme molokai

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Bundle configurations

let g:airline_powerline_fonts = 1

