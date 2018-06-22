if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/shunsuke/.config/nvim/init.vim', '/Users/shunsuke/vim-init-settings/dein/rc/dein.toml', '/Users/shunsuke/vim-init-settings/dein/rc/dein_lazy.toml', '/Users/shunsuke/vim-init-settings/dein/rc/neovim.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/shunsuke/vim-init-settings/dein'
let g:dein#_runtime_path = '/Users/shunsuke/vim-init-settings/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/shunsuke/vim-init-settings/dein/.cache/init.vim'
let &runtimepath = '/Users/shunsuke/vim-init-settings/deinrepos/github.com/Shougo/dein.vim/,/Users/shunsuke/.config/nvim,/etc/xdg/nvim,/Users/shunsuke/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/shunsuke/vim-init-settings/dein/repos/github.com/Shougo/dein.vim,/Users/shunsuke/vim-init-settings/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.3.0/share/nvim/runtime,/Users/shunsuke/vim-init-settings/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/shunsuke/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/shunsuke/.config/nvim/after,/Users/shunsuke/vim-init-settngs/.vim'
filetype off
	let g:airline#extensions#tabline#enabled = 1
	let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
	let g:airline#extensions#hunks#enabled = 0
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['emmet-vim', 'deoplete.nvim'])
