vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.local/nvim/undo'

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'auto'
vim.opt.colorcolumn = '80'

vim.g.loaded_netrwPlugin = 1
-- vim.g.netrw_winsize = 25
-- vim.g.netrw_preview = 1
-- vim.g.netrw_altv = 0 -- 0 => left, 1 => right
