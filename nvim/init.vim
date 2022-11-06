call plug#begin()

Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'Mofiqul/dracula.nvim'
Plug 'qpkorr/vim-bufkill'
call plug#end()

set hlsearch

set termguicolors
set background=dark
colorscheme everforest

hi link NvimTreeNormal Folded 
hi link NvimTreeEndOfBuffer NvimTreeNormal 

set number

let loaded_netrw = 1
let loaded_netrwPlugin = 1


lua <<EOF
require("nvim-tree").setup {
open_on_setup = true,	
open_on_setup_file = true
}

require('gitsigns').setup {
current_line_blame = true,
signcolumn = false,
numhl      = true
}

require("bufferline").setup {
options = {
	separator_style = "slant",
	offsets = {
		{
		filetype = "NvimTree",
		text = "File explorer",
		text_align = "center",
		separator = true,
		highlight = "Normal"
		}
	}
}
}
EOF

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <C-n> :enew<CR>
noremap <leader>q :BD<CR>
noremap <A-1> :NvimTreeToggle<CR>
noremap <leader>1 :NvimTreeFindFile<CR>
