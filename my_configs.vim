let g:go_version_warning = 0
let g:session_autoload = 'no'
let g:session_autosave = 'no'


if has("gui_running")
let g:NERDTreeWinPos = "left"

"switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"source $VIMRUNTIME/mswin.vim
"behave mswin
"unmap <C-V>
"unmap <C-A>

"syntax on
set number              "show line number
set shiftwidth=4
set softtabstop=4       "tab size
set tabstop=4
set nobk
set lines=999
set columns=999
set nobackup
set nowritebackup
set noswapfile
set expandtab
"set nofoldenable "not working in here.
"set foldlevel=99 "not fully working also.

"set fileencodings=utf8,gb2312,big5,latin1
set fileencodings=utf-8,gb2312,gbk,gb18030

let mapleader="\\"

"colorscheme vim-irblack
"colorscheme mayansmoke
"colorscheme monokai
if has("gui_running")
set guioptions=agimtrb
set guioptions+=T
set background=light
"colorscheme xcode
"colorscheme solarized
"colorscheme github
"colorscheme monokai
"colorscheme molokai
colorscheme peaksea


set guifont=DejaVuSansMono\ 10 "設定字型和大小
"set guifont=Inconsolata\ 11 "設定字型和大小
"set guifont=Monaco\ 10 "設定字型和大小
"set guifont=Monospace\ 10 "設定字型和大小

"else
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
endif

"顯示tab及行末空白字元
"set listchars=eol:↵,tab:»·,trail:╳,extends:»,precedes:«
"set listchars=eol:↵,tab:»·,trail:☰,extends:»,precedes:«
"set list


"map <silent><F1> :NERDTreeToggle<cr> 
"map <C-n> :NERDTreeToggle<CR>
nmap <F5> :NERDTreeToggle<cr>



"bookmark config
let g:bookmark_highlight_lines = 1
highlight BookmarkLine ctermbg=white ctermfg=black guifg=#000000 guibg=#d9f9f8


"current line - highlight
set cursorline 
"hi CursorLine gui=underline cterm=underline
"hi CursorLine gui=underline cterm=underline ctermbg=white guibg=white ctermfg=black
hi CursorLine cterm=NONE gui=NONE  ctermbg=white guibg=#ffffcc ctermfg=black guifg=black

set cursorcolumn
highlight CursorColumn guibg=#ffffcc guifg=black

"bookmarks: mm, mn, mp
let g:bookmark_sign = '>>'

"vimwiki
let g:vimwiki_auto_checkbox=1
let g:vimwiki_hl_cb_checked=1
"nnoremap <F4> "=strftime("%c")<CR>P
"nnoremap <F4> "=strftime(" %d/%m/%Y %H:%M ")<CR>P
nnoremap <leader>cr "=strftime(" `@created(%Y.%m.%d %H:%M)`  ")<CR>P

" --- toogle done ---
"map <leader>dd <Plug>VimwikiToggleListItem "=strftime(" @done(%Y.%m.%d %H:%M)  ")<CR>
nnoremap <leader>dd "=strftime(" `@done(%Y.%m.%d %H:%M)`  ")<CR>P
map <leader>dn <Plug>VimwikiToggleListItem <CR>

" --- toogle cenceled ---
"map <leader>cc <Plug>VimwikiToggleListItem "=strftime(" @canceled(%Y.%m.%d %H:%M)  ")<CR>

" --- toogle of/off ---
"map <leader>tt <Plug>VimwikiToggleListIte<CR>


"CTags
map <C-F12> :!/usr/bin/ctags -R --tag-relative=yes --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q  .<CR> 


""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber

"Ack
let g:ack_autoclose = 0

"Tagbar
nmap <F8> :TagbarToggle<CR>

"file encoding auto detect
"let g:fencview_autodetect = 1

"show full path name in status line
"set laststatus=2
"set statusline+=%F
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

"grep.vim
nnoremap <silent> <F3> :Rgrep<CR>



"set nofoldenable 關掉fold
endif " for gui running
