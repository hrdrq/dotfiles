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
Plug 'tomtom/tcomment_vim'
Plug 'janko/vim-test'
call plug#end()
colorscheme twilight
nmap <Leader>n :TestNearest<CR>
nmap <Leader>f :TestFile<CR>
nmap <Leader>s :TestSuite<CR>
nmap <Leader>l :TestLast<CR>
nmap <Leader>g :TestVisit<CR>
let test#strategy = "iterm"
