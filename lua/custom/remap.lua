vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Lex)
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up and down
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")

-- don't move cursor when joinging lines
vim.keymap.set('n', 'J', "mzJ`z")

-- page navigation, keep cursor in middle
vim.keymap.set('n', '<c-d>', "<c-d>zz")
vim.keymap.set('n', '<c-u>', "<c-u>zz")

-- searching, keep cursor in middle and open folds
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

-- copy paste
vim.keymap.set('x', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- nop Q... why?
vim.keymap.set('n', 'Q', '<nop>')

-- quickfix navigation
vim.keymap.set('n', '<f2>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<s-f2>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- replace word under the cursor
vim.keymap.set('n', '<leader>s', ':%s,\\<<c-r><c-w>\\>,<c-r><c-w>,gI<left><left><left>')


