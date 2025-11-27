vim.pack.add({"https://github.com/jiaoshijie/undotree"})
vim.keymap.set('n', "<leader>u", "<cmd>lua require('undotree').toggle()<cr>")
