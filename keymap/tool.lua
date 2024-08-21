local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
require("keymap.helpers")

return {
	["n|<leader>fl"] = map_cu("Telescope current_buffer_fuzzy_find"):with_noremap():with_silent():with_desc("find: current buffer fuzzy find"),
	["n|gu"] = map_cu("Telescope resume"):with_noremap():with_silent():with_desc("find: resume last find window"),
}
