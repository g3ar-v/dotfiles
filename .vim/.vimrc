
set runtimepath+=~/.vim

"Enable Syntax Highlight
syntax enable
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

"Set line as cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set ruler
set so=7
set cursorline
set showmatch
set mat=2
set cmdheight=1
set foldcolumn=1
set number
set shiftwidth=2
set tabstop=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set vb
set t_vb=
set tm=500

"Font & Encoding
set encoding=utf8

" Returns true if paste mode is enabled
function! HasPaste()
	return 'PASTE MODE  '
endif
return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
		buffer #
	else
		bnext
	endif

	if bufnr("%") == l:currentBufNum
		new
	endif

	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction

set encoding=utf8
set ffs=unix,dos,mac

"Set status line
set laststatus=2

set t_Co=256
"ColorScheme
try
	colorscheme gruvbox
catch
endtry

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = 1
let g:airline_theme='base16'
let g:airline#extensions#default#section_truncate_width = {
			\'c': 40,
			\'z': 50,}

let g:airline#extensions#wordcount#enabled = 0
let g:airline_section_z = '%p%% %l:%v'
let g:airline_skip_empty_sections = 1

set noshowmode
set relativenumber
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set lbr
set tw=500

set backspace=eol,start,indent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Turn backup off and swap files
set nobackup
set nowb
set noswapfile

"Disable Scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CocConfig
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"Load pathogen path

execute pathogen#infect()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Key-binding
let mapleader=","
map <leader>sv :source $MYVIMRC<CR>

" Fast saving
nmap <leader>w :w!<cr>

" Fast closing
nmap <leader>q :q<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let g:comments_map_keys = 0

" key-mappings for comment line in normal mode
noremap  <silent> <C-K> :call CommentLine()<CR>
" key-mappings for range comment lines in visual <Shift-V> mode
vnoremap <silent> <C-K> :call RangeCommentLine()<CR>

" key-mappings for un-comment line in normal mode
noremap  <silent> <C-N> :call UnCommentLine()<CR>
" key-mappings for range un-comment lines in visual <Shift-V> mode
vnoremap <silent> <C-N> :call RangeUnCommentLine()<CR>

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-x> :NERDTreeClose<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

if has("mac") || has("macunix")
	nmap <D-j> <M-j>
	nmap <D-k> <M-k>
	vmap <D-j> <M-j>
	vmap <D-k> <M-k>
endif

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

fun! CleanExtraSpaces()
	" Delete trailing white space on save, useful for some filetypes ;)
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	silent! %s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfun

if has("autocmd")
	autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim/.vimrc<cr>
autocmd! bufwritepost ~/.vim/.vimrc  source ~/.vim/.vimrc
" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimPlug Installation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/forked')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

call plug#end()

