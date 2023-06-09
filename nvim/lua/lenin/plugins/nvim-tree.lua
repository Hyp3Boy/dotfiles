local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

--recommended settings form nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#ec6075]])

-- configure nvim-tree
nvimtree.setup({
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "▶",
					arrow_open = "▼",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
	},
	-- Automatically close nvim-tree when file is opened
	-- default is false
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},
	-- 	git = {
	-- 		ignore = false,
	-- 	},
})
