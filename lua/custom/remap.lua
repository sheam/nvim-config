vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Yazi, { desc = "Open Yazi file manager" })
-- vim.keymap.set("n", "<leader>cw", "<cmd>Yazi cwd<cr>")
-- vim.keymap.set("<c-up>", "<cmd>Yazi toggle<cr>")

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- don't move cursor when joinging lines
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- movement
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right while still in insert mode" })

-- page navigation, keep cursor in middle
vim.keymap.set("n", "<c-d>", "<c-d>zz", { desc = "Page down and center" })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { desc = "Page up and center" })

-- searching, keep cursor in middle and open folds
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- copy paste
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "paste over selection without losing clipboard contents" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })
-- vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set("v", "<leader>d", '"_D', { desc = "Delete selection without yanking" })

-- nop Q... why?
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })

-- quickfix navigation
-- vim.keymap.set("n", "<f2>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<s-f2>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- diagnostic: note these are different than the quickfix list (:cc, :cn, etc)
vim.keymap.set("n", "<leader>ee", vim.diagnostic.open_float, {desc = "show error for line"})
vim.keymap.set("n", "<leader>el", vim.diagnostic.setloclist, {desc = "open error list window"})
vim.keymap.set("n", "<leader>ej", function()
	vim.diagnostic.goto_next()
	vim.cmd("normal! zz")
end, { desc = "next diagnostic error" })
vim.keymap.set("n", "<leader>ek", function()
	vim.diagnostic.goto_prev()
	vim.cmd("normal! zz")
end, { desc = "previous diagnostic error" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "format file" })

-- buffers
vim.keymap.set("n", "<leader>t", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>tt", ":bn<CR>", { desc = "Next buffer" })

-- replace word under the cursor
vim.keymap.set("n", "<leader>s", ":%s,\\<<c-r><c-w>\\>,<c-r><c-w>,gI<left><left><left>", { desc = "Replace word under cursor" })
