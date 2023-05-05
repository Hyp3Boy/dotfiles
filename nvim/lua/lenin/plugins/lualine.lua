local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine dracula theme
local lualine_dracula = require("lualine.themes.dracula")

-- configure lualine with dracula theme
lualine.setup({
	options = {
		theme = lualine_dracula,
		icons_enabled = true,
	},
})
