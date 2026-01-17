-- In your init.lua or a dedicated plugin configuration file
vim.pack.add({
	{ src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("*") },
	"https://github.com/saghen/blink.download", -- Downloads prebuilt binaries for blink plugins
	{ src = "https://github.com/Saghen/blink.pairs", version = vim.version.range("*") },
	"https://github.com/saghen/blink.indent",
})

-- Later in your configuration, you would set up the individual blink modules
require("blink.cmp").setup({
	signature = { enabled = true },
	completion = {
		trigger = {
			show_on_insert_on_trigger_character = false,
		},
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		menu = {
			auto_show = false,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
	keymap = {
		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-e>"] = { "hide", "fallback" },
		["<CR>"] = { "accept", "fallback" },

		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },

		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<C-p>"] = { "select_prev", "fallback_to_mappings" },
		["<C-n>"] = { "select_next", "fallback_to_mappings" },

		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },

		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
	},
})
require("blink.indent").setup({
	-- blink.indent configuration options
})
require("blink.pairs").setup({
	-- blink.indent configuration options
})
