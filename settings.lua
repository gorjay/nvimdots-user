local settings = {}

settings["use_ssh"] = true
settings["use_copilot"] = false
settings["transparent_background"] = true
settings["format_on_save"] = false
settings["dashboard_image"] = function()
    return {
        "[[ Hello Gorjay ]]"
    }
end

return settings
