"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('/root/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax enable
"End dein Scripts-------------------------

"init
syntax enable
set t_Co=256
set termguicolors
set showmatch
set list listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%
set noswapfile
set number
set cursorline
set autoindent
set shiftwidth=2
colorscheme hybrid

"key map
tnoremap <Esc> <C-\><C-n>
nnoremap <silent><C-n> :NERDTreeToggle<CR>
nnoremap J 10j
nnoremap K 10k
nnoremap U <c-r>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Tab>l 5<C-w>>
nnoremap <Tab>h 5<C-w><
nnoremap <Tab>j 10<C-w>+
nnoremap <Tab>k 10<C-w>-

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
