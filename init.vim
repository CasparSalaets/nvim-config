" =========================================================
" 🌙 Neovim Configuration
" =========================================================
" Author: Caspar Salaets 
" Description: Clean, documented Neovim setup using vim-plug
" Compatible with: Neovim (v0.5+)
" =========================================================


" ------------------------------
" 🧭 General Settings
" ------------------------------
set number                  " Show absolute line numbers
set relativenumber          " Show relative line numbers
set autoindent              " Copy indent from current line when starting a new line
set smartindent             " Smart auto-indenting when starting a new line
set tabstop=2               " Number of spaces that a <Tab> counts for
set shiftwidth=2            " Size of an indent
set smarttab                " Use shiftwidth when inserting a <Tab>
set softtabstop=2           " Number of spaces a <Tab> counts for while performing editing ops
set mouse=a                 " Enable mouse support
set wildmenu                " Enhanced command-line completion
set scrolloff=8             " Keep 8 lines visible above/below the cursor
set guicursor=n-v-c:block   " Use block cursor in normal/visual/command modes
set completeopt-=preview    " Disable preview window in autocomplete
let mapleader = " "
" Highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Enable true color if available
if has("termguicolors")
  set termguicolors
endif

syntax enable
colorscheme torte
" colorscheme night-owl  " Uncomment for alternative theme

" ------------------------------
" 🔌 Plugin Management
" ------------------------------
" Plugin manager: vim-plug
call plug#begin('~/.config/nvim/plugged')

" --- Editing Enhancements ---
Plug 'tpope/vim-surround'                  " Easily manipulate surrounding characters
Plug 'tpope/vim-commentary'                " Comment/uncomment code
Plug 'itmammoth/doorboy.vim'               " Auto-pairing brackets and quotes

" --- Navigation & File Management ---
Plug 'preservim/nerdtree'                  " File explorer
Plug 'preservim/tagbar'                    " Code structure sidebar
Plug 'ThePrimeagen/harpoon'                " Quick file navigation

" --- UI Enhancements ---
Plug 'vim-airline/vim-airline'             " Status bar
Plug 'rafi/awesome-vim-colorschemes'       " Color schemes
Plug 'ryanoasis/vim-devicons'              " Developer icons
Plug 'ap/vim-css-color'                    " Show CSS colors inline

" --- Autocompletion & Syntax ---
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Intellisense engine
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" --- Search & Telescope ---
Plug 'nvim-lua/plenary.nvim'               " Lua utilities (required by Telescope)
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" --- Terminal Integration ---
Plug 'akinsho/toggleterm.nvim', {'tag': '*'}

" --- Themes ---
Plug 'haishanh/night-owl.vim'

Plug 'mbbill/undotree'
call plug#end()

" ------------------------------
" 🧩 Plugin Configuration
" ------------------------------

nnoremap <F5> :UndotreeToggle<CR>

" --- NERDTree ---
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollapsible = "~"
nnoremap <C-f> :NERDTreeToggle<CR>

" --- Tagbar ---
nmap <F8> :TagbarToggle<CR>

" --- ToggleTerm ---
lua << EOF
require("toggleterm").setup{
  size = 20,
  open_mapping = [[<C-n>]],  -- Toggle terminal with Ctrl+N
  hide_numbers = true,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  direction = "float",
  float_opts = {
    border = "curved",
    winblend = 3,
  },
}
EOF

" --- CoC (Conquer of Completion) ---
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
nnoremap <leader>rn <Plug>(coc-rename)
" Remap keys for applying code actions at the cursor position
nnoremap <leader>ca  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nnoremap <leader>sa  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nnoremap <leader>fc  <Plug>(coc-fix-current)	

" --- Harpoon ---
nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>m :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>t :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>r :lua require("harpoon.mark").rm_file()<CR>

" --- Telescope ---
nnoremap <silent> <leader>ff :Telescope find_files<CR>

" --- Doorboy (Auto Pairs) ---
let g:doorboy_nomap_brackets = { '*': ['()', '[]', '{}'] }
let g:doorboy_nomap_quotations = { '*': ["'", '"', '`'] }

" =========================================================
" 🧠 Notes
" =========================================================
" • Requires Node.js, npm, and Python 3 for CoC.
" • Nerd Fonts are needed for icons to display correctly.
" • Works best in Neovim 0.8+ or later.
" =========================================================


