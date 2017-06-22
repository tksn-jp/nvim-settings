" ~~~~~~~~~~~~~~~ basic settings ~~~~~~~~~~~~~~~~~

" lightline.vim
set laststatus=2
set noshowmode

set number
set background=dark
autocmd ColorScheme * set number
set cursorline
hi clear CursorLine
autocmd InsertLeave * set nopaste

" when read set nopaste
autocmd BufRead * set nopaste

set foldmethod=indent
set foldlevel=2
set foldcolumn=3

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
syntax on
set mouse=a
set showmatch
set autoindent
set tabstop=4
set shiftwidth=4
set paste

filetype off
filetype plugin indent off
filetype plugin indent on
syntax on
autocmd FileType go autocmd BufWritePre <buffer> Fmt
set completeopt=menu,preview

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
imap <C-e> <End>
nnoremap :tree :NERDTree

if !has('gui_running')
  set t_Co=256
endif
" ~~~~~~~~~~~~~~ End basic settings ~~~~~~~~~~~~~~~~



" ~~~~~~~~~~~~~~ dein settings ~~~~~~~~~~~~~~~~~~~~~

" directory where plugins will be installed
let s:dein_dir = expand('~/vim-init-settings/dein')

" dein.vim
let s:dein_repo_dir = s:dein_dir . 'repos/github.com/Shougo/dein.vim'

" if dein.vim is not in local, get it from github
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" start settings
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	" plugin lists in TOML file
	" make TOML file in advance
	let g:rc_dir	= expand('~/vim-init-settings/dein/rc')
	let s:toml		= g:rc_dir . '/dein.toml'
	let s:lazy_toml	= g:rc_dir . '/dein_lazy.toml'

	" read and cache TOML
	call dein#load_toml(s:toml,		{'lazy':0})
	call dein#load_toml(s:lazy_toml,{'lazy':1})

	" end settings
	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable
colorscheme molokai
let g:seiya_auto_enable=1

" install what are installed yet
if dein#check_install()
	call dein#install()
endif

" ~~~~~~~~~~~~~~~ End dein settings ~~~~~~~~~~~~~~~~~~~~
