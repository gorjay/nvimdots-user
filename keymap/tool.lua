local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
require("keymap.helpers")
local local_settings = require("user.local_settings")
vim.notify = require("notify")

local function openToday()
	if local_settings["allinone_daily_path"] == nil then
		vim.notify("local setting 'allinone_daily_path' is missing", "error")
		return
	end

	vim.api.nvim_command(
		string.format("edit %s/%s.md", local_settings["allinone_daily_path"], os.date("%Y-%m-%d", os.time()))
	)
end

local function openYesterday()
	if local_settings["allinone_daily_path"] == nil then
		vim.notify("local setting 'allinone_daily_path' is missing", "error")
		return
	end

	vim.api.nvim_command(
		string.format(
			"edit %s/%s.md",
			local_settings["allinone_daily_path"],
			os.date("%Y-%m-%d", os.time() - 24 * 60 * 60)
		)
	)
end

local function openAllinOne()
	if local_settings["allinone_path"] == nil then
		vim.notify("local setting 'allinone_path' is missing", "error")
		return
	end

	require("telescope.builtin").find_files({ cwd = local_settings["allinone_path"] })
end

local function allinone_live_grep()
	if local_settings["allinone_path"] == nil then
		vim.notify("local setting 'allinone_path' is missing", "error")
		return
	end

	require("telescope").extensions.live_grep_args.live_grep_args({ cwd = local_settings["allinone_path"] })
end


return {
	["n|<leader>fl"] = map_cu("Telescope current_buffer_fuzzy_find") :with_noremap() :with_silent() :with_desc("find: current buffer fuzzy find"),
	["n|<leader>fr"] = map_cu("Telescope oldfiles") :with_noremap() :with_silent() :with_desc("find: fuzzy command history"),
	["n|<leader>fb"] = map_cu("Telescope buffers") :with_noremap() :with_silent() :with_desc("find: fuzzy buffer"),
	["n|<leader>fo"] = map_cu("Telescope command_history") :with_noremap() :with_silent() :with_desc("find: fuzzy command history"),
	["n|gu"] = map_cu("Telescope resume"):with_noremap():with_silent():with_desc("find: resume last find window"),
	["n|<leader>fa"] = map_callback(openAllinOne):with_noremap():with_silent():with_desc("allinone: find file"),
	["n|<leader>fza"] = map_callback(allinone_live_grep):with_noremap():with_silent():with_desc("allinone: find file"),
	["n|<leader>at"] = map_callback(openToday) :with_noremap() :with_silent() :with_desc("allinone: open today's daily note'"),
	["n|<leader>ap"] = map_callback(openYesterday) :with_noremap() :with_silent() :with_desc("allinone: open previous day's (yesterday) daily note'"),
	["c|<leader>fl"] = map_cmd("Telescope live_grep_args cwd="):with_noremap():with_desc("insert: Telescope live_grep_args cwd="),
	["c|<leader>ff"] = map_cmd("Telescope find_files cwd="):with_noremap():with_desc("insert: Telescope find_files cwd="),
}
