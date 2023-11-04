local custom = {}

-- TODO: CANT take effect, why?
custom["folke/todo-comments.nvim"] = {
	lazy = true,
	event = "BufRead",
	config = require("configs.editor.todo-comments"), -- Require that config
}

return custom
