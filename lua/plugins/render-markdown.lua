vim.pack.add({'https://github.com/MeanderingProgrammer/render-markdown.nvim'})

require('render-markdown').setup({
	completions = { lsp = { enabled = true } },
	html = { enabled = false },
	latex = { enabled = false },
	yaml = { enabled = false },
})

--: dependencies
-- 'echasnovski/mini.icons'

