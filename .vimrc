" Use system clipboard
set clipboard=unnamedplus

" Line numbers
set number

"Remove highlights on enter
nnoremap <CR> :noh<CR><CR>

" Search settings
set incsearch
set showmatch
set hlsearch
set smartcase
set ignorecase
set shortmess-=S  " Show result counts like '[1/4]'. Vim 8.1.1270+.

" Configure tabs as 4 spaces
set expandtab  " replace tabs with spaces
set tabstop=4  " spaces inserted by pressing tab
set shiftwidth=4  " spaces inserted by autoindentation

" More persistent command history.
set history=10000


call plug#begin()
Plug 'easymotion/vim-easymotion'
map  <C-F> <Plug>(easymotion-bd-f)
call plug#end()

" Mapping
imap <C-Q> <Esc>
