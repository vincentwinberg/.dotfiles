vim.g.mapleader = " "

local keymap = vim.keymap
local helperfuncs = require("helperfunctions")

keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "Clears highlighted search in file" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>,', builtin.buffers, { desc = 'Telescope buffers' })

-- window management
keymap.set("n", "<leader>wsv", "<C-w>v", { desc = "Split vim window vertically" })
keymap.set("n", "<leader>wsh", "<C-w>s", { desc = "Split vim window horisontally" })
keymap.set("n", "<leader>wse", "<C-w>=", { desc = "Make split windows to equal size" })

keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Moves to left window" })
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Moves to right window" })
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Moves one window down" })
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Moves one window up" })
keymap.set("n", "<leader>wq", "<C-w>q", { desc = "Close current split window" })

-- tab management
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tbn", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- build/run commands
keymap.set("n", "<leader>pr", ":!python %<CR>", { desc = "Run current Python file" })
keymap.set("n", "<leader>bb", helperfuncs.cmake_build, { desc = "Compile using CMakeLists.txt" })
