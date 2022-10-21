set number
set relativenumber
syntax on
set mouse=a

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set nowrap

set nohlsearch " no highlight search
set incsearch
set noerrorbells

set scrolloff=8

set colorcolumn=80
set encoding=UTF-8


" ------- Plugins --------
call plug#begin()
" 42
Plug '42Paris/42header'

" Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/todo-comments.nvim'

Plug 'https://github.com/preservim/nerdtree'		" NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons'	" Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal'		" Vim Terminal

Plug 'https://github.com/preservim/tagbar'			" Tagbar for code navigation

Plug 'nvim-lualine/lualine.nvim'
"Plug 'https://github.com/vim-airline/vim-airline'	" Status bar
"Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' } " Auto Completion
Plug 'jiangmiao/auto-pairs'

" Plug 'http://github.com/tpope/vim-surround'		" Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary'		" For Commenting gcc & gc
Plug 'https://github.com/lifepillar/pgsql.vim'		" PSQL Pluging needs :SQLSetType pgsql.vim


" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

" Color themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ayu-theme/ayu-vim' 
Plug 'gruvbox-community/gruvbox'

call plug#end()

"let ayucolor="mirage"
" colorscheme gruvbox
let g:catppuccin_flavour = "mocha"
colorscheme catppuccin

set termguicolors
" set background=dark
highlight Normal guibg=none

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" _________Coc settings___________
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use <c-space> to trigger completion.
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaiming
nmap <leader>rn <Plug>(coc-rename)

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window.
" nnoremap <silent> K :call ShowDocumentation()<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ coc#pum#visible() ? coc#pum#next(1) :
"      \ CheckBackspace() ? "\<Tab>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

nmap <F8> :TagbarToggle<CR>

set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
"  " :PlugClean :PlugInstall :UpdateRemotePlugins
"  "
"  " :CocInstall coc-python
"  " :CocInstall coc-clangd
"  " :CocInstall coc-snippets
"  " :CocCommand snippets.edit... FOR EACH FILE TYPE
"
" air-line
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'gruvbox'
"
"  if !exists('g:airline_symbols')
"      let g:airline_symbols = {}
"      endif
"
"      " airline symbols
"      let g:airline_left_sep = ''
"      let g:airline_left_alt_sep = ''
"      let g:airline_right_sep = ''
"      let g:airline_right_alt_sep = ''
"      let g:airline_symbols.branch = ''
"      let g:airline_symbols.readonly = ''
"      let g:airline_symbols.linenr = ''
"
"

" --- 42 HEADER ---
let g:user42 = "test_user"
let g:mail42 = "test@student.42.ft"

nnoremap <F1> :Stdheader<CR>

" --- TELESCOPE ---
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>td <cmd>TodoTelescope<cr>


" --- COMMENTS ---
lua << EOF
	require("todo-comments").setup {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	}
	require('lualine').setup {
		options = {
			theme = "catppuccin"
		}
	}
EOF
