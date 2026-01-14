vim.pack.add({
	'https://github.com/stevearc/conform.nvim',
})

-- Override gohtmltmpl filetype with gotmpl (in case other plugins set it)
vim.api.nvim_create_autocmd("FileType", {
	pattern = "gohtmltmpl",
	callback = function()
		vim.bo.filetype = "gotmpl"
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

-- Format on save for .gohtml files
local format_sync_grp = vim.api.nvim_create_augroup("GoHTMLFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.gohtml",
	callback = function()
		require('conform').format({ bufnr = vim.api.nvim_get_current_buf() })
	end,
	group = format_sync_grp,
})
