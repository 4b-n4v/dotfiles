--          --[[  My personal Neovim Configuration ]]--
--          --[[  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  ]]--
--
--                        .,,uod8B8bou,,.
--               ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
--          ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
--          !...:!TVBBBRPFT||||||||||!!^^""'   ||||
--          !.......:!?|||||!!^^""'            ||||
--          !.........||||                     ||||
--          !.........|||| # 4b-n4v @arch in ~ ||||
--          !.........|||| $ nvim              ||||
--          !.........||||                     ||||
--          !.........||||                     ||||
--          !.........||||                     ||||
--          `.........||||                    ,||||
--           .;.......||||               _.-!!|||||
--    .,uodWBBBBb.....||||       _.-!!|||||||||!:'
-- !YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb....
-- !..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
-- !....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
-- !......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^"`;:::       `.
-- !........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
-- `..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
--   `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
--     `........::::::::::::::::;iof688888888888888888888b.     `
--       `......:::::::::;iof688888888888888888888888888888b.
--         `....:::;iof688888888888888888888888888888888899fT!
--           `..::!8888888888888888888888888888888899fT|!^"'
--             `' !!988888888888888888888888899fT|!^"'
--                 `!!8888888888888888899fT|!^"'
--                   `!988888888899fT|!^"'
--                     `!9899fT|!^"'
--                       `!^"'
--
--           --[[     Kudos to
--                    https://github.com/vhyrro
--                    for giving me a better
--                    understanding of Neovim
--                    and Kickstart NVIM            ]]--
--
-- Leaders
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Nerd Fonts
vim.g.have_nerd_font = true

-- [[ Setting options yeehaw ]]
require 'options' -- Under ./lua/options.lua

-- [[ Basic Keymaps ]]
require 'keymaps' -- Under ./lua/keymaps.lua

-- [[ Lazy Plugin Manager ]]
require 'lazy-bootstrap' -- Under ./lua/lazy-bootstrap.lua

-- [[ Configure and install plugins ]]
require 'lazy-plugins' -- Under ./lua/lazy-plugins.lua

-- [[ Colorscheme ]]
vim.cmd.colorscheme 'moonfly'
require('highlights').setup()
-- Lua initialization file
-- vim: ts=2 sts=2 sw=2 et
