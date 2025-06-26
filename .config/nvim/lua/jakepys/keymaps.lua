vim.keymap.set("n", "<leader>e", function()
	vim.cmd("NvimTreeOpen")
end)


-- Move in buffers and Esc in terminal mode 
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], {desc = "Move left" })
vim.keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down" })
vim.keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up" })
vim.keymap.set("n", "<C-1>", [[<Cmd>wincmd l<CR>]], { desc= "Move right" })
