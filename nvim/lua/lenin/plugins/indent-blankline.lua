vim.opt.termguicolors = true
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#0077b6 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#00b4d8 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#90e0ef gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#caf0f8 gui=nocombine]])

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
require("indent_blankline").setup({
	space_char_blankline = " ",
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
	},
})
