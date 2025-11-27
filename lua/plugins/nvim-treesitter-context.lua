vim.pack.add({'https://github.com/nvim-treesitter/nvim-treesitter-context'})

--: requires tree-sitter

require('treesitter-context').setup {
      max_lines = 0,
      min_window_height = 0,
      line_numbers = true,
      multiline_threshold = 40,
      trim_scope = "outer",
      mode = "cursor",
}
