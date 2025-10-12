:set number
:set relativenumber
:set autoindent
:set smartindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set wildmenu
set scrolloff=8
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

call plug#begin('~/.config/nvim/plugged')
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw "
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/haishanh/night-owl.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'https://github.com/nvim-telescope/telescope-file-browser.nvim'
Plug 'itmammoth/doorboy.vim'
Plug 'https://github.com/ThePrimeagen/harpoon'
call plug#end()

if has("termguicolors")
  set termguicolors
endif

syntax enable
colorscheme torte
" colorscheme night-owl

set guicursor=n-v-c:block

:set completeopt-=preview " For No Previews

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


nmap <F8> :TagbarToggle<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let mapleader = " "
nnoremap <silent> <leader>ff :Telescope find_files<CR>

" Smart indentation for braces
" inoremap {<CR> {<CR>}<Esc>O
let g:doorboy_nomap_brackets = { '*': ['()', '[]', '{}'] }
let g:doorboy_nomap_quotations = { '*': ["'", '"'] }

lua << EOF
require("toggleterm").setup{
  size = 20,
  open_mapping = [[<C-n>]],   -- Press F9 to toggle terminal
  hide_numbers = true,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  direction = "float",       -- Can be "horizontal", "vertical", "tab", or "float"
  float_opts = {
    border = "curved",
    winblend = 3,
  },
}
EOF

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction	

" Add current file to Harpoon list
nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>

" Toggle Harpoon quick menu
nnoremap <leader>m :lua require("harpoon.ui").toggle_quick_menu()<CR>

" Navigate to files 1–4
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>

" Optional: open terminal 1
nnoremap <leader>t :lua require("harpoon.term").gotoTerminal(1)<CR>

" Remove file from Harpoon list
nnoremap <leader>r :lua require("harpoon.mark").rm_file()<CR>
