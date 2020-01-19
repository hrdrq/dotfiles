syntax enable
set number
" set foldmethod=syntax
" set foldlevel=99
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" for atcoder start
" :let acq="b"
" let acq = 'b'
" :nnoremap <C-A> :!make "Q=".acq<CR>
let acq = 'a'
:nnoremap <C-A> :!make Q=<C-r>=acq<CR><CR>

" for atcoder end
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
" For nerd-fonts:
"   brew tap homebrew/cask-fonts
"   brew cask install font-hack-nerd-font
Plug 'ryanoasis/nerd-fonts'
set guifont=Hack\ Regular\ Nerd\ Font\ Complete:h12 
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'kchmck/vim-coffee-script'
Plug 'janko/vim-test'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic'
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_python_checkers=['flake8']
" インデントに色を付けて見やすくする
Plug 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
Plug 'terryma/vim-multiple-cursors'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key='<c-t>'
call plug#end()
if has("gui_running")
  colorscheme twilight
else
  colorscheme twilight256 
endif
nmap <Leader>n :TestNearest<CR>
nmap <Leader>f :TestFile<CR>
nmap <Leader>s :TestSuite<CR>
nmap <Leader>l :TestLast<CR>
nmap <Leader>g :TestVisit<CR>
let test#strategy = "iterm"
