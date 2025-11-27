vim.pack.add({'https://github.com/nvim-mini/mini.surround'})

require('mini.surround').setup({
	highlight_duration = 1000,

	-- number of lines to search within
	n_lines = 20
});

--: Default mappings
-- mappings = {
--   add = 'sa', -- Add surrounding in Normal and Visual modes
--   delete = 'sd', -- Delete surrounding
--   find = 'sf', -- Find surrounding (to the right)
--   find_left = 'sF', -- Find surrounding (to the left)
--   highlight = 'sh', -- Highlight surrounding
--   replace = 'sr', -- Replace surrounding

--   suffix_last = 'l', -- Suffix to search with "prev" method
--   suffix_next = 'n', -- Suffix to search with "next" method
-- },
