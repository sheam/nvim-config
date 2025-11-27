vim.pack.add({'https://github.com/ibhagwan/fzf-lua'})

vim.keymap.set('n', "<leader>pf", function() require("fzf-lua").files() end)
vim.keymap.set('n', "<leader>pg", function() require("fzf-lua").live_grep() end)
vim.keymap.set('n', "<leader>pb", function() require("fzf-lua").buffers() end)
