:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'vim-airline/vim-airline' " Bottom toolbar 
Plug 'preservim/nerdtree'      " NerdTree
Plug 'tpope/vim-surround'      " handle surrounding chars
Plug 'tpope/vim-commentary'    " commenting facilities
Plug 'rafi/awesome-vim-colorschemes' " colorschemes
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tc50cal/vim-terminal'
Plug 'preservim/tagbar'

set encoding=UTF-8
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme gruvbox 
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
