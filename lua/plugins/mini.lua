vim.pack.add({
	'https://github.com/echasnovski/mini.nvim',
})

-- Icons
require('mini.icons').setup()

-- Surround (sa, sd, sr, etc.)
require('mini.surround').setup({
	highlight_duration = 1000,
	n_lines = 20,
})

-- Git integration
require('mini.git').setup()

-- Diff/hunk visualization
require('mini.diff').setup()

-- Statusline
require('mini.statusline').setup({
	use_icons = true,
})
