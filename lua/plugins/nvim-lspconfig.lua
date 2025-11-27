vim.pack.add({
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/mason-org/mason-lspconfig.nvim',
	'https://github.com/neovim/nvim-lspconfig',
})

require('mason').setup()
require('mason-lspconfig').setup({
	automatic_installation = true,
	automatic_enable = true,
})

-- vim.keymap.set('n', 'g
-- vim.lsp.enable('lua_ls')
-- vim.lsp.enable('c')
-- vim.lsp.enable('cpp')
-- vim.lsp.enable('python')
-- vim.lsp.enable('bash')
