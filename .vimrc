set nocompatible              " be iMproved, required
syntax on 
filetype off                  " required

set path+=**
set wildmenu
set tabstop=2 shiftwidth=2 expandtab
set number

nnoremap <NL> i<CR><ESC>

source ~/.vim/bundle/setcolors/plugin/setcolors.vim

map <C-K> :py3f ~/.vim/bundle/clang-format.py<cr>
imap <C-K> <c-o>:py3f ~/.vim/bundle/clang-format.py<cr>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" syntax higlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" color schemes
Plugin 'flazz/vim-colorschemes'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Switch between header and source
Plugin 'ericcurtin/CurtineIncSw.vim'

" youcompleteme
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colorscheme desertEx
set cursorline
map <F5> :call CurtineIncSw()<CR>
set completeopt-=preview


function! Formatonsave()
  let l:formatdiff = 1
  :py3f ~/.vim/bundle/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()
