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
						code_block = {
							content_only = true,
							conceal = true,
							width = "content",
						},
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Documents/notes/",
							jlox = "~/Documents/notes/jlox/",
							journal = "~/Documents/notes/journal",
						},
						index = "index.norg",
						default_workspace = "notes",
					},
				},
				["core.journal"] = {
					config = {
						workspace = "journal",
					},
				},
				["core.keybinds"] = {
					config = {
						-- hook = function(keybinds)
						-- 	keybinds.remap("norg", "n", "<LocalLeader>")
						-- end,
					},
				},
				["core.summary"] = { config = { strategy = "by_path" } },
				["core.ui.calendar"] = {},
				["core.completion"] = {
					config = { engine = "nvim-cmp" },
				},
			},
		})
	end,
	-- Some personal keymappings for Neorg
	vim.keymap.set("n", "<leader>n", "<CMD>Neorg<CR>", { desc = "[N]eorg" }),
	vim.keymap.set("n", "<leader>ni", "<CMD>Neorg index<CR>", { desc = "[N]eorg [I]ndex" }),
	vim.keymap.set("n", "<leader>nr", "<CMD>:w<CR><CMD>Neorg return<CR>", { desc = "[N]eorg [R]eturn" }),
	vim.keymap.set("n", "<leader>ntc", "<CMD>Neorg toggle-concealer<CR>", { desc = "[N]eorg [T]oggle [C]oncealer" }),
	vim.keymap.set(
		"n",
		"<leader>ngs",
		"<CMD>Neorg generate-workspace-summary<CR>",
		{ desc = "[N]eorg [G]enerate Worskpace [S]ummary" }
	),
	vim.keymap.set("n", "<leader>nwj", "<CMD>Neorg workspace jlox<CR>", { desc = "[N]eorg [W]orkspace [J]lox" }),
}
