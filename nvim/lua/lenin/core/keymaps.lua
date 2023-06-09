vim.g.mapleader = " "

local keymap = vim.keymap --for conciseness

--general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") --close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open newtab
keymap.set("n", "<leader>tx", ":tabclose<CR>") --close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

--vim -maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
-- Keymaps for vimtex
keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<cr>") -- compile latex file
keymap.set("n", "<leader>lv", "<cmd>VimtexView<cr>") -- view pdf file
keymap.set("n", "<leader>lt", "<cmd>VimtexTocToggle<cr>") -- toggle table of contents
keymap.set("n", "<leader>lq", "<cmd>VimtexQuickfixToggle<cr>") -- toggle quickfix window
keymap.set("n", "<leader>lL", "<cmd>VimtexLogToggle<cr>") -- toggle log window
keymap.set("n", "<leader>lS", "<cmd>VimtexStop<cr>") -- stop compilation
keymap.set("n", "<leader>lC", "<cmd>VimtexClean<cr>") -- clean auxiliary files
keymap.set("n", "<leader>lF", "<cmd>VimtexCompileForce<cr>") -- force compile
keymap.set("n", "<leader>lI", "<cmd>VimtexInfo<cr>") -- show info
--actualize packer
keymap.set("n", "<leader>pa", "<cmd>PackerSync<cr>")
-- database
keymap.set("n", "<leader>db", "<cmd>DBUIToggle<cr>")
keymap.set("n", "<leader>z", "<Plug>(DBUI_ExecuteQuery)")

-- REST API
-- keymap.set("n", "<leader>rq", '<cmd>lua require("rest-nvim").run()<CR>')
keymap.set("n", "<leader>rq", "<Plug>RestNvim")
