return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },

			ensure_installed = {
				"python",
				"c",
				"cpp",
				"go",
				"lua",
				"bash",
				"json",
				"markdown",
				"vim",
				"vimdoc",
			},
		})
	end,
}
