set pythondll=libpython3.9.so
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

""""""""" THE WALL OF PLUG INS 
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'


" Initialize plugin system
call plug#end()

""""""""" Settings for the NERDTREE
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

""""""""" File dependend shortcuts
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


