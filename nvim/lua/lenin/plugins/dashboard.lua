local status, db = pcall(require, "dashboard")
if not status then
	return
end

db.setup({
	theme = "doom",
	config = {
		preview = {
			-- command       -- preview command
			-- file_path     -- preview file path
			-- file_height = 11, -- preview file height
			-- file_width = 70, -- preview file width
		},
		header = {
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
			"",
			" [ --Welcome Lenin-- ] ",
			"",
			"",
			"",
		}, --your header
		center = {
			{
				icon = " ",
				desc = "Find File           ",
				key = "f",
				keymap = "<leader>ff",
				action = function()
					vim.cmd("Telescope find_files")
				end,
			},
			{
				-- folder open icon 
				icon = " ",
				desc = "File Browser      ",
				key = "b",
				keymap = "<leader>e",
				action = function()
					vim.cmd("NvimTreeToggle")
				end,
			},
			-- actualize packer
			{
				icon = " ",
				desc = "Packer Actualize          ",
				key = "p",
				keymap = "<leader>pa",
				action = function()
					vim.cmd("PackerSync")
				end,
			},

			--git status
			{
				icon = " ",
				desc = "Git Status          ",
				key = "g",
				keymap = "<leader>gs",
				action = function()
					vim.cmd("Telescope git_status")
				end,
			},

			-- git commits
			{
				icon = " ",
				desc = "Git Commits          ",
				key = "c",
				keymap = "<leader>gc",
				action = function()
					vim.cmd("Telescope git_commits")
				end,
			},
			-- git commits for current file
			{
				icon = " ",
				desc = "Git Commits for current file          ",
				key = "C",
				keymap = "<leader>gfc",
				action = function()
					vim.cmd("Telescope git_bcommits")
				end,
			},
			-- git branches
			{
				icon = " ",
				desc = "Git Branches          ",
				key = "B",
				keymap = "<leader>gb",
				action = function()
					vim.cmd("Telescope git_branches")
				end,
			},
		},
		footer = {
			"",
			"",
			"",
			":D",
			"",
			"",
			"",
		}, --your footer
	},
})
