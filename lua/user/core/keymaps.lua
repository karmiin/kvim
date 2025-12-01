local keymap = vim.keymap 


keymap.set("n", "<leader>e", "<cmd>Neotree toggle position=left<CR>", { desc = "Toggle Explorer" })
keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Reveal file in Explorer" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format file" })


keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Prev buffer" })
keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })