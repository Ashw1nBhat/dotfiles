return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter")
	configs.setup({
	    highlight = { enable = true },
	    indent = { enable = true },
	    autotage = { enable = true },
	    ensure_installed = {
		"lua",
		"tsx",
		"typescript",
		"c",
		"cpp",
		"rust",
	    },
	    auto_install = false,
	})
    end
}
