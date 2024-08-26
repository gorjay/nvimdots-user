local custom = {}

custom["kylechui/nvim-surround"] = {
	lazy = true,
	event = "VeryLazy",
	config = function() require("nvim-surround").setup({}) end,
}

custom["m4xshen/smartcolumn.nvim"] = {
	lazy = true,
	event = "BufReadPost",
}

return custom
