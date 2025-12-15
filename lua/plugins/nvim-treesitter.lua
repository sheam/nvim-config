vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"markdown",
		"markdown_inline",
		"c",
		"cpp",
		"cmake",
		"bash",
		"lua",
		"python",
		"json",
		"vimdoc",
		"go",
		"gotmpl",
	},
	sync_install = false,

	-- auto_install requires tree-sitter-cli to be installed
	auto_install = true,

	-- NOTE: these are the names of the parsers and not the filetype.
	ignore_install = {},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
