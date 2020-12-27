call plug#begin(stdpath('data').'/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'blueyed/vim-diminactive'
call plug#end()

if has("syntax")
	syntax on
endif
set hlsearch
set showmatch
set ruler
set fileencodings=utf8,euc-kr

set foldmethod=syntax
set number relativenumber

nnoremap z s
nnoremap s z
set background=dark
colorscheme palenight
highlight LineNr ctermfg=yellow
let g:airline_theme = "palenight"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level=2 
let g:indent_guides_guide_size=1 
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=darkgrey
hi IndentGuidesEven ctermbg=grey
