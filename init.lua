require("lazybootstrap")
require("lazy").setup({
	{"RRethy/nvim-base16", lazy = false},
	{"nvim-lualine/lualine.nvim", lazy = false},
	{"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},
	{"kaarmu/typst.vim", ft = "typst", lazy = false},
	{"m4xshen/autoclose.nvim", lazy = false},
	{"evanleck/vim-svelte", lazy = false},
	{"nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	}},
	{"ms-jpq/coq_nvim", lazy = false},
	{"jidn/vim-dbml", lazy = false},
	{"folke/which-key.nvim", lazy = false},
	{"nvim-telescope/telescope.nvim", lazy = false},
	{"tomiis4/Hypersonic.nvim", lazy = false},
	{"L3MON4D3/LuaSnip", run = "make install_jsregexp"},
	{"numToStr/Comment.nvim", lazy = false},
	{"rktjmp/playtime.nvim", lazy = false},
	{"jim-fx/sudoku.nvim", lazy = false},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'tpope/vim-dadbod'},
	{'lambdalisue/suda.vim'},
	{'leafo/moonscript-vim'},
	{
		'glacambre/firenvim',
		lazy = not vim.g.started_by_firenvim,
		build = function()
			vim.fn["firenvim#install"](0)
		end
	},
	{'norcalli/nvim-colorizer.lua'},
	{'imsnif/kdl.vim'},
})
require("sudoku-setup")
require("neotree-setup")
require("comment-setup")
require("lualine-setup")
require("autoclose").setup()
require("ibl").setup()
vim.cmd[[colorscheme base16-chalk]]
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.cursorline = true
vim.cmd[[:set termguicolors]]
vim.cmd[[:tnoremap <Esc> <C-\><C-n>]]
require("whichkey")
require("lspzero-config")
require("telescope-setup")
require("firenvim-setup")
require("colorizer").setup()
