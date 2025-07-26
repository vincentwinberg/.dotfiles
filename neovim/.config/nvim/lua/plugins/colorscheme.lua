return {
    'deparr/tairiki.nvim',
	priority = 1000,
    lazy = false,
	config = function()
        require('tairiki').setup({
            plugins = { auto = true },
        })
		vim.cmd.colorscheme('tairiki')
	end,
}

