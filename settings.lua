local settings = {}

settings["use_ssh"] = true
settings["use_copilot"] = true
settings["transparent_background"] = false
settings["format_modifications_only"] = true
settings["format_on_save"] = true
settings["dashboard_image"] = function()
    return {
        "[[ Hello Gorjay ]]"
    }
end
settings["lsp_deps"] = {
	"ansiblels",
	"marksman",
}

return settings
