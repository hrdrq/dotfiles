syntax enable
set number
set foldmethod=syntax
set foldlevel=99
nnoremap <silent><C-e> :NERDTreeToggle<CR>
autocmd QuickFixCmdPost *grep* cwindow
call plug#begin()
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'
Plug 'vim-scripts/twilight'             
Plug 'vim-scripts/twilight256.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
colorscheme twilight

