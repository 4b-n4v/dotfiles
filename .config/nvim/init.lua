--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================
========                                    .-----.          ========
========         .----------------------.   | === |          ========
========         |.-""""""""""""""""""-.|   |-----|          ========
========         ||                    ||   | === |          ========
========         ||   KICKSTART.NVIM   ||   |-----|          ========
========         ||                    ||   | === |          ========
========         ||                    ||   |-----|          ========
========         ||:Tutor              ||   |:::::|          ========
========         |'-..................-'|   |____o|          ========
========         `"")----------------(""`   ___________      ========
========        /::::::::::|  |::::::::::\  \ no mouse \     ========
========       /:::========|  |==hjkl==:::\  \ required \    ========
========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
========                                                     ========
=====================================================================
=====================================================================
--]]
--
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Set folds to disabled cuz folds suck balls
vim.g.foldenable = false
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require("options")

-- [[ Basic Keymaps ]]
require("keymaps")

-- [[ Install `lazy.nvim` plugin manager ]]
require("lazy-bootstrap")

-- [[ Configure and install plugins ]]
require("lazy-plugins")

-- The line beneath this is called `modeline`. See `:help modeline`
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.ejs",
	command = "set filetype=ejs",
})
-- vim: ts=2 sts=2 sw=2 et
