" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
" file manager
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" theme
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }

" syntax
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'

" autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" emmet
Plug 'mattn/emmet-vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" konfigurasi workspace vim
syntax on
set background=dark

" konfigurasi workspace vim
syntax on
set background=dark
set nu
set relativenumber
set t_Co=256
set laststatus=2
set backspace=indent,eol,start
set splitbelow
set splitright
set encoding=utf-8
syntax on
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set showmatch           " highlight matching [{()}]
let g:xptemplate_brace_complete = '([{'

" Go/golang specific settings. Works for any programming language other than Go
" at this time.
autocmd BufEnter *.go  setlocal
\ tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80 noexpandtab
\ cindent cinoptions=:0,l1,t0,g0,(0,W8
\ filetype=go

" indentation
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=2    "Indent by 2 spaces when using >>, <<, == etc.
set softtabstop=2   "Indent by 2 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" set mouse
set mouse=a

" replace Esc with Caps lock
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" move lines in normal mode or insert mode
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" buffers
nnoremap <Tab> :buffers<CR>:buffer<Space>

" Leader + C to copy the visual selection to the system clipboard
vnoremap <Leader>c "+y

" Leader + V to paste the content of the system clipboard
nnoremap <Leader>p "+p

"NerdTree
nnoremap <C-b> :NERDTreeToggle<CR>

" termguicolors
if (has("termguicolors"))
 set termguicolors
endif

" folding
set foldmethod=syntax   
set foldnestmax=10
set foldlevel=2

" indentline
let g:indentLine_char = '┆'

" vimairline
let g:airline_theme = 'kolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline_right_sep = ''
let g:airline_left_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_powerline_fonts = 1

"enable folding
nnoremap <space> za

"buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" fzf
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" replace Esc with Caps lock
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" move lines in normal mode or insert mode
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
