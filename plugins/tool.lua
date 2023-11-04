local custom = {}

custom["nvim-telescope/telescope-smart-history.nvim"] = {
	lazy = true,
	config = require("configs.tool.telescope-smart-history"), -- Require that config
	dependencies = { "kkharji/sqlite.lua" },
}

return custom
