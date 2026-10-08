vim.cmd('hi clear')
if vim.fn.exists("syntax_on") then
	vim.cmd('syntax reset')
end
vim.opt.termguicolors = true

local c = {
	bg = "NONE",
	fg = "#D0D0D0",
	blue = "#2A66FF",
	green = "#00CC00",
	magenta = "#CC00CC",
	red = "#FF0000",
	brown = "#CC7722"
}

vim.api.nvim_set_hl(0, "Normal", {fg = c.fg, bg = c.bg})
vim.api.nvim_set_hl(0, "Comment", {fg = c.blue})
vim.api.nvim_set_hl(0, "Type", {fg = c.green})
vim.api.nvim_set_hl(0, "StorageClass", {fg = c.green})
vim.api.nvim_set_hl(0, "PreProc", {fg = c.magenta})
vim.api.nvim_set_hl(0, "Include", {fg = c.magenta})
vim.api.nvim_set_hl(0, "String", {fg = c.red})
vim.api.nvim_set_hl(0, "Number", {fg = c.red})
vim.api.nvim_set_hl(0, "Constant", {fg = c.red})
vim.api.nvim_set_hl(0, "Statement", {fg = c.brown})
vim.api.nvim_set_hl(0, "Identifier", {fg = c.fg})
vim.api.nvim_set_hl(0, "Function", {fg = c.fg})
vim.api.nvim_set_hl(0, "Operator", {fg = c.fg})

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
vim.cmd('set number')
vim.cmd('set relativenumber')

vim.lsp.config('clangd', {
	cmd = { 'clangd' },
	filetypes = { 'c' },
	root_markers = { 'compile_commands.json', 'compile_flags.txt', '.git',  },
})

vim.lsp.enable('clangd')

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
-- grr checks for references
-- K hovers
-- grn renames
-- gra quick-fix list
-- ctrl+W D Displays error
