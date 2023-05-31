local opt = vim.opt

opt.colorcolumn = "80"
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true
opt.smartindent = true
opt.relativenumber = true
opt.list = true
-- opt.listchars:append "space:⋅"
-- opt.listchars:append "eol:↴"
--
vim.diagnostic.config { underline = false }
-- vim.cmd [[
-- 	if exists("g:neovide")
-- 		set guifont=MonoLisa\ Nerd\ Font:h12
--
-- 		let g:neovide_transparency=0.9
-- 		let g:neovide_cursor_animation_length=0.03
-- 		let g:neovide_cursor_trail_length=1.0
-- 	endif
-- ]]

vim.g.copilot_assume_mapped = true
