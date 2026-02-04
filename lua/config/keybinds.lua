vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pl", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
-- format file bind
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end)
-- window transfer
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<C-c>", 'gg"+yG')
