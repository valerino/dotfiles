""""""""""""""""""""""""""""""""""""""""""""
" minpac vim8 plugin manager
""""""""""""""""""""""""""""""""""""""""""""
set packpath^=~/.vim
packadd minpac
if exists('*minpac#init')
	" call minpac#init({'verbose':4})
	call minpac#init()

	" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
	call minpac#add('k-takata/minpac', {'type': 'opt'})
	
	" Add other plugins here.

	" ctags management
	call minpac#add('ludovicchabant/vim-gutentags')

	" nerdtree
	call minpac#add('scrooloose/nerdtree')
	
	" nerdtree git
	call minpac#add('Xuyuanp/nerdtree-git-plugin')
	
	" unix helpers
	call minpac#add('tpope/vim-eunuch')

	" visualize git changes
	call minpac#add('airblade/vim-gitgutter')
	
	" sublime style multiple cursors
	call minpac#add('terryma/vim-multiple-cursors')
	
	" surround with brackets, quotes, ....
	call minpac#add('tpope/vim-surround')
	
	" to copy line with line numbers with c-y
	call minpac#add('ujihisa/nclipper.vim')

	" vim comment plugin
	call minpac#add('tyru/caw.vim')

	" auto brackets/parens/...
	call minpac#add('jiangmiao/auto-pairs')

	" vim defaults
	call minpac#add('tpope/vim-sensible')
	
	" ctrlP fuzzy search
	call minpac#add('ctrlpvim/ctrlp.vim')

	" lightline
	call minpac#add('itchyny/lightline.vim')

	" tagbar
	call minpac#add('majutsushi/tagbar')

	" dracula theme
	call minpac#add('dracula/vim')

	" autoformat
	call minpac#add('Chiel92/vim-autoformat')

	" fugitive git plugin
	call minpac#add('tpope/vim-fugitive')

	" startify startup page
	call minpac#add('mhinz/vim-startify')

	" markdown integration
	call minpac#add('plasticboy/vim-markdown')

	" remap esc to handle shitty touchbar on mbp
	call minpac#add('zhou13/vim-easyescape')
	
	" Load the plugins right now. (optional)
	" packloadall
	
	" set commands
	command! PackUpdate packadd minpac | source ~/.vimrc | call minpac#update()
	command! PackClean  packadd minpac | source ~/.vimrc | call minpac#clean()
endif

"""""""""""""""""""""""""""""""""""""""""""""""
" builtin
"""""""""""""""""""""""""""""""""""""""""""""""
" set color
color dracula
let g:dracula_colorterm = 0

" encoding utf8
set enc=utf-8

" show line numbers
set number

" open split in right pane
set splitright

" share clipboard with host
if has('mac')
	set clipboard=unnamed
elseif has('unix')
	set clipboard=unnamedplus
endif

" fix backspace
set backspace=indent,eol,start

" hilight search, hit enter to turn off hilight then
set hlsearch
noremap <CR> :noh<CR><CR>

" map esc to jk/kj in insert mode
let g:easyescape_chars = { "j": 1, "k": 1 }
cnoremap jk <ESC>
cnoremap kj <ESC>

" set tabs=4
set tabstop=4
set shiftwidth=4
"set expandtab

" allows to switch between buffers without saving first
set hidden

" enable mouse
set mouse=a

" enable pasting multiple times (paste, reselect, recopy)
xnoremap p pgvy

" filetype
filetype plugin on

" do not screw makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" autorefresh vimrc
autocmd! bufwritepost .vimrc source %

"""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""
" open tagbar with f8
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" autoformat
"""""""""""""""""""""""""""""""""""""""""""""""
" au BufWrite *.c,*.cpp,*.h,*.hpp,*.m,*.mm,*.go,*.sh :Autoformat

""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""
" open with esc-esc
let g:ctrlp_map = '<c-p>'
map <C-g> :CtrlPTag<CR>
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden=1
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_clear_cache_on_exit=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

""""""""""""""""""""""""""""""""""""""""""""""""
" builtin netrw
""""""""""""""""""""""""""""""""""""""""""""""""
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_altv=1
"let g:netrw_preview = 1
"let g:netrw_alto = 0
"let g:netrw_list_hide='.*\.swp$'
"let g:netrw_browse_split = 4
"let g:netrw_winsize = 25
"let g:netrw_chgwin = winnr()

""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1

" auto-open nerdtree
autocmd VimEnter *
                 \   if !argc()
                 \ |   Startify
                 \ |   NERDTree
                 \ |   wincmd w
                 \ | endif
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if nerdtree is the only remained window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" toggle nerdtree with CTRL-t
map <C-t> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""
" lightline
""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'dracula',
\   'active': {
\     'left':[ [ 'mode', 'paste' ],
\              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
\     ]
\   },
\   'component': {
\     'lineinfo': 'L: %3l:%-2v',
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head',
\   }
\}
