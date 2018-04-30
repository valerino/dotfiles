""""""""""""""""""""""""""""""""""""""""""""
" minpac vim8 plugin manager
""""""""""""""""""""""""""""""""""""""""""""
set packpath^=~/.vim
silent! packadd minpac
if exists('*minpac#init')
	call minpac#init()

	" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
	call minpac#add('k-takata/minpac', {'type': 'opt'})

	" Add other plugins here.

	" match brakets
	call minpac#add('jiangmiao/auto-pairs')

	" asynchronous lint engine
	call minpac#add('w0rp/ale')

	" vim comment plugin
	call minpac#add('tyru/caw.vim')

	" maralla completor
	call minpac#add('maralla/completor.vim')

	" ctrlP fuzzy search
	call minpac#add('kien/ctrlp.vim')

	" lightline
	call minpac#add('itchyny/lightline')

	" tagbar
	call minpac#add('majutsushi/tagbar')

	" ultisnips
	call minpac#add('SirVer/ultisnips')

	" dracula theme
	call minpac#add('dracula/vim')

	" autoformat
	call minpac#add('Chiel92/vim-autoformat')

	" fugitive git plugin
	call minpac#add('tpope/vim-fugitive')

	" golang integration
	call minpac#add('fatih/vim-go')

	" startify startup page
	call minpac#add('mhinz/vim-startify')

	" markdown integration
	call minpac#add('plasticboy/vim-markdown')


	" Load the plugins right now. (optional)
	"packloadall
	
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
syntax on 

" encoding utf8
set enc=utf-8

" show ruler
set ruler

" show line numbers
set number

" open split in lower pane
set splitbelow

" share clipboard with host
set clipboard=unnamed

" fix backspace
set backspace=indent,eol,start

" hilight search, hit enter to turn off hilight then
set hlsearch
noremap <CR> :noh<CR><CR>

" map esc to jj in insert mode
imap jj <esc>

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
" dracula
"""""""""""""""""""""""""""""""""""""""""""""""
" use default term background for dracula

"""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""
" open tagbar with f8
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" autoformat
"""""""""""""""""""""""""""""""""""""""""""""""
au BufWrite *.py,*.c,*.cpp,*.h,*.hpp,*.m,*.mm,*.go,*.sh :Autoformat

"""""""""""""""""""""""""""""""""""""""""""""""
" maralla completor
"""""""""""""""""""""""""""""""""""""""""""""""
let g:completor_python_binary='python3'
let g:completor_clang_binary='clang'
let g:completor_gocode_binary = 'gocode'

" parameters always visible :)
let g:completor_auto_close_doc = '0'

" visual studio alike (cycle with cursor, select with tab)
imap <expr> <Tab> pumvisible() ? "\<C-y><esc>%<esc>" : "\<Tab>"

" plays nice with ultisnips, select snippet with Enter
let g:UltiSnipsExpandTrigger = "<nop>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"

" last but not least, tab switches among parameters after completion
map <tab> <Plug>CompletorCppJumpToPlaceholder<esc>

""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""
" open with esc-esc
let g:ctrlp_map = '<esc><esc>'

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
" nerdtree alike
let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 20
"augroup ProjectDrawer
"autocmd!
"autocmd VimEnter * :Vexplore
"augroup END
let g:netrw_menu = 0

""""""""""""""""""""""""""""""""""""""""""""""""
" lightline
""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
\ 'colorscheme': 'Dracula',
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


