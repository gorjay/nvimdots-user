local custom = {}

custom["fei6409/log-highlight.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = function() require("log-highlight").setup({}) end,
}

return custom
