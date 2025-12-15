vim.pack.add({
	'https://github.com/ray-x/go.nvim',
	'https://github.com/ray-x/guihua.lua',  -- Required dependency
})

require('go').setup({
	disable_defaults = false,
	go = 'go',
	goimports = 'gopls',
	fillstruct = 'gopls',
	gofmt = 'gofumpt', -- or 'gofmt' or 'goimports'
	tag_transform = false,
	lsp_cfg = false, -- don't override your existing LSP config
	lsp_inlay_hints = {
		enable = true,
	},
})

-- Format on save
local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require('go.format').goimports()
	end,
	group = format_sync_grp,
})
