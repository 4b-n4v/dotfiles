return {
	"nvim-neorg/neorg",
	dependencies = { "luarocks.nvim" },
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Documents/notes/",
						},
						index = "index.norg",
					},
				},
			},
		})
	end,
}
