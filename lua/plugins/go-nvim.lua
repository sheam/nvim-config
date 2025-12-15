vim.pack.add({
	'https://github.com/ray-x/go.nvim',
	'https://github.com/ray-x/guihua.lua',  -- Required dependency
	'https://github.com/stevearc/conform.nvim',  -- Formatting plugin
})

require('go').setup({
	disable_defaults = false,
	go = 'go',
	goimports = 'gopls',
	fillstruct = 'gopls',
	gofmt = 'gofumpt',
	tag_transform = false,
	lsp_cfg = true,
	lsp_inlay_hints = {
		enable = true,
	},
})

-- Force .gohtml files to be detected as gotmpl (AFTER go.nvim setup)
vim.filetype.add({
	extension = {
		gohtml = "gotmpl",
	},
})

-- Override go.nvim's gohtmltmpl filetype with gotmpl
vim.api.nvim_create_autocmd("FileType", {
	pattern = "gohtmltmpl",
	callback = function()
		vim.bo.filetype = "gotmpl"
	end,
})

-- Disable inlay hints for gotmpl files to avoid gopls errors
vim.api.nvim_create_autocmd("FileType", {
	pattern = "gotmpl",
	callback = function()
		vim.defer_fn(function()
			vim.lsp.inlay_hint.enable(false, { bufnr = 0 })
		end, 100)
	end,
})

-- Setup conform.nvim for .gohtml formatting
require('conform').setup({
	formatters_by_ft = {
		gotmpl = { 'prettier' },
		gohtmltmpl = { 'prettier' },
	},
	formatters = {
		prettier = {
			command = 'npx',
			args = function(self, ctx)
				return { 'prettier', '--stdin-filepath', ctx.filename }
			end,
			stdin = true,
		},
	},
})

-- Format on save for .go files
local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require('go.format').goimports()
	end,
	group = format_sync_grp,
})

-- Format on save for .gohtml files
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.gohtml",
	callback = function()
		require('conform').format({ bufnr = vim.api.nvim_get_current_buf() })
	end,
	group = format_sync_grp,
})
