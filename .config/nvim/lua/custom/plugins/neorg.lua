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
	-- Some personal keymappings for Neorg
	vim.keymap.set("n", "<leader>n", "<CMD>Neorg<CR>", { desc = "[N]eorg" }),
	vim.keymap.set("n", "<leader>ni", "<CMD>Neorg index<CR>", { desc = "[N]eorg [I]ndex" }),
	vim.keymap.set("n", "<leader>nr", "<CMD>:w<CR><CMD>Neorg return<CR>", { desc = "[N]eorg [R]eturn" }),
	vim.keymap.set("n", "<leader>ntc", "<CMD>Neorg toggle-concealer<CR>", { desc = "[N]eorg [T]oggle [C]oncealer" }),
}
