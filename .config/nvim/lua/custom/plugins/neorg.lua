return {
	"nvim-neorg/neorg",
	dependencies = { "luarocks.nvim" },
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {
					config = {
						folds = false,
						icon_preset = "basic",
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Documents/notes/",
							jlox = "~/Documents/notes/jlox/",
						},
						index = "index.norg",
						default_workspace = "notes",
					},
				},
				["core.keybinds"] = {
					config = {
						-- hook = function(keybinds)
						-- 	keybinds.remap("norg", "n", "<LocalLeader>")
						-- end,
					},
				},
			},
		})
	end,
}
