local custom = {}

-- TODO: can not take effect, why?
custom["nvim-telescope/telescope-smart-history.nvim"] = {
	lazy = true,
	config = require("configs.tool.telescope-smart-history"), -- Require that config
	dependencies = { "kkharji/sqlite.lua" },
}

return custom
