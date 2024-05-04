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

-- FIXME: vim-sneak's semicolon doesn't work
-- custom["justinmk/vim-sneak"] = {
-- 	lazy = true,
-- 	event = "BufReadPost",
-- }

return custom
