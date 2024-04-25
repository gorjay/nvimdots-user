local custom = {}

custom["folke/todo-comments.nvim"] = {
	lazy = true,
	event = "BufRead",
	config = function() require("todo-comments").setup() end,
}

custom["kylechui/nvim-surround"] = {
	lazy = true,
	event = "VeryLazy",
	config = function() require("nvim-surround").setup({}) end,
}

return custom
