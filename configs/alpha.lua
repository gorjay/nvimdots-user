local dashboard = require("alpha.themes.dashboard")
require("modules.utils").gen_alpha_hl()

dashboard.section.header.val = {
	[[Hello Gorjay]],
}
dashboard.section.header.opts.hl = "AlphaHeader"
return {}
