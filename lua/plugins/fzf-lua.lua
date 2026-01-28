vim.pack.add({'https://github.com/ibhagwan/fzf-lua'})

vim.keymap.set('n', "<leader>pf", function() require("fzf-lua").files() end, { desc = "Find files" })
vim.keymap.set('n', "<leader>pg", function() require("fzf-lua").live_grep() end, { desc = "Live grep search" })
vim.keymap.set('n', "<leader>pb", function() require("fzf-lua").buffers() end, { desc = "Find buffers" })
vim.keymap.set('n', "<leader>pc", function() require("fzf-lua").commands() end, { desc = "Find commands" })
vim.keymap.set('n', "<leader>pk", function() require("fzf-lua").keymaps() end, { desc = "Find keymaps" })
