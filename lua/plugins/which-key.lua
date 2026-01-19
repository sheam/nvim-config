vim.pack.add({ 'https://github.com/folke/which-key.nvim' })
require('which-key').setup({
	delay = 300, -- delay before showing popup (ms)
	icons = {
		mappings = false, -- disable icons if you don't have a nerd font
	},
})

vim.keymap.set('n', '<leader>/', '<cmd>WhichKey<cr>', { desc = 'Show all keymaps' })
