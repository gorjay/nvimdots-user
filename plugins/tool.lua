local custom = {}

custom["aserowy/tmux.nvim"] = {
    lazy = false,
    config = require("configs.tool.tmux")
}

return custom
