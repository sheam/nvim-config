vim.pack.add({'https://github.com/mikavilpas/yazi.nvim'})
require('yazi').setup({
	open_for_directories = true,
	keymaps = {
		open_file_in_vertical_split = '<c-v',
	},
})
