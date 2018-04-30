"""""""""""""""""""""""""""""""""""""""""""""""
" builtin
"""""""""""""""""""""""""""""""""""""""""""""""
" set color
  syntax on
  color dracula

  " encoding utf8
  set enc=utf-8

  " show ruler
  set ruler

  " show line numbers
  set number

  " syntax hilight
  syntax on

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
   
  " set tabs=2 spaces and spaces as tabs
  set tabstop=2
  set shiftwidth=2
  set expandtab

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
  " plugins
  """""""""""""""""""""""""""""""""""""""""""""""
  """""""""""""""""""""""""""""""""""""""""""""""
  " tagbar
  """""""""""""""""""""""""""""""""""""""""""""""
  " open tagbar with f8
  nmap <F8> :TagbarToggle<CR>
  
  """""""""""""""""""""""""""""""""""""""""""""""
  " autoformat
  """""""""""""""""""""""""""""""""""""""""""""""
  au BufWrite *.py,*.c,*.cpp,*.h,*.hpp,*.m,*.mm :Autoformat

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
  nmap <F10> :CtrlPMRUFiles<CR>
  nmap <F9> :CtrlPBuffer<CR>
  let g:ctrlp_map = '<c-p>'
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


