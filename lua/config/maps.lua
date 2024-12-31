vim.g.mapleader = " "

-- Toggle NvimTree to see file explorer
vim.keymap.set("n", "<leader>fe", vim.cmd.NvimTreeToggle)

-- Switch between windows inside NeoVim
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-k>", "<C-w>k") 
vim.keymap.set("n", "<C-j>", "<C-w>j") 

-- Split and vsplit windows and close windows
vim.keymap.set("n", "<leader>s", vim.cmd.split)
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>c", vim.cmd.close)
