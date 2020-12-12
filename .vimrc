set nocompatible              " be iMproved, required
filetype off                  " required
let g:python3_host_prog = '/usr/bin/python3'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'rust-lang/rust.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'copy/deoplete-ocaml'
"Plugin 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'make release',
"    \ }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'junegunn/fzf'
"Plugin 'neovimhaskell/haskell-vim'
"Plugin 'eagletmt/neco-ghc'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

let g:deoplete#enable_at_startup = 1
"let g:LanguageClient_serverCommands = {
"\ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"\ 'python': ['/usr/bin/pyls'],
"\ 'cpp': ['clangd'],
"\ 'c': ['clangd'],
"\ }
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <F1> :call LanguageClient_contextMenu()<CR>

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

set pastetoggle=<F7>
map <F2> :bprev<CR>
map <F3> :bnext<CR>
map <F5> :tabprevious<CR>
map <F6> :tabnext<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '-'

set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
set background=dark
colorscheme gruvbox

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="gruvbox"
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline^=%{coc#status()}

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_rust_checkers = ['cargo']
"let g:syntastic_python_checkers=[] "'flake8']
"let g:syntastic_python_flake8_args='--ignore=W504,E261,E128,E501,E126,E303'

set hidden

"if executable('opam')
"  let g:opamshare=substitute(system('opam config var share'),'\n$','','''')
"  if isdirectory(g:opamshare."/merlin/vim")
"    execute "set rtp+=" . g:opamshare."/merlin/vim"
"  endif
"endif

"autocmd FileType haskell set tabstop=8|set shiftwidth=4|set softtabstop=4|set shiftround|set expandtab
"autocmd FileType rust set tabstop=4 shiftwidth=4 noexpandtab smarttab
autocmd FileType rust set tabstop=4 shiftwidth=4 expandtab smarttab
set tabstop=4 shiftwidth=4 expandtab smarttab
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab smarttab
autocmd FileType java set tabstop=3 shiftwidth=3 noexpandtab smarttab

map <C-n> :CocCommand explorer<CR>
map <C-p> :FZF<CR>
let NERDTreeShowHidden=1

set guicursor=
set mouse=a
vmap <C-C> "+y

set splitbelow
set splitright

set laststatus=2
set encoding=utf-8
"set tabstop=3 shiftwidth=0 noexpandtab smarttab
set number
set list
set listchars=tab:>-
