return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
        "nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"MunifTanjim/nui.nvim",
	"nvim-treesitter/nvim-treesitter",
	"nvim-tree/nvim-web-devicons",
    },
    opts = {
	lang = "python3",
	storage = {
	    home = "~/Projects/leetcode",
	    cache = "~/Projects/leetcode",
	},
    },
}
