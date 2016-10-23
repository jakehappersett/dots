"" handle plugins 

call plug#begin('~/.vim/bundle')
"sensible add ins
Plug 'tpope/vim-sensible'
Plug 'shougo/vimproc',{'do':'make'}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' 
Plug 'Valloric/YouCompleteMe',{'do':'./install.py'}
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'rdnetto/YCM-Generator',{'branch':'stable'}
call plug#end()


"add in undo after close"" 
if version >= 703
	if exists("&undodir")
		set undodir=~/.vim/undo//
	endif
	set undofile
	set undoreload=10000
endif
set undolevels=10000
if exists("&backupdir")
	set backupdir=~/.vim/backups//
endif
if exists("&directory")
	set directory=~/.vim/swaps//
endif

"YCM shit

