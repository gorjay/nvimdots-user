local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
require("keymap.helpers")
local local_settings = require("user.local_settings")

local function openToday()
	if local_settings["allinone_daily_path"] ~= nil then
		vim.api.nvim_command(string.format("edit %s/%s.md", local_settings["allinone_daily_path"], os.date("%Y-%m-%d", os.time())))
	end
end

local function openYesterday()
	if local_settings["allinone_daily_path"] ~= nil then
		vim.api.nvim_command(string.format("edit %s/%s.md", local_settings["allinone_daily_path"], os.date("%Y-%m-%d", os.time() - 24 * 60 * 60)))
	end
end

return {
	["n|<leader>fl"] = map_cu("Telescope current_buffer_fuzzy_find")
		:with_noremap()
		:with_silent()
		:with_desc("find: current buffer fuzzy find"),
	["n|gu"] = map_cu("Telescope resume"):with_noremap():with_silent():with_desc("find: resume last find window"),
	["n|<leader>at"] = map_callback(openToday)
		:with_noremap()
		:with_silent()
		:with_desc("allinone: open today's daily note'"),
	["n|<leader>ap"] = map_callback(openYesterday)
		:with_noremap()
		:with_silent()
		:with_desc("allinone: open previous day's (yesterday) daily note'"),
}
