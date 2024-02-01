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
		{
				"glacambre/firenvim",
				lazy = not vim.g.started_by_firenvim,
				build = function()
						vim.fn["firenvim#install"](0)
				end
		},
		{"jidn/vim-dbml", lazy = false},
		{"folke/which-key.nvim", lazy = false},
		{"nvim-telescope/telescope.nvim", lazy = false},
		{"akinsho/toggleterm.nvim", lazy = false},
		{"tomiis4/Hypersonic.nvim", lazy = false}
})
require("lualine").setup()
require("autoclose").setup()
require("ibl").setup()
require("toggleterm").setup()
vim.cmd[[colorscheme base16-ayu-dark]]
vim.o.tabstop = 4
vim.o.cursorline = true
vim.cmd[[:tnoremap <Esc> <C-\><C-n>]]
require("whichkey")
