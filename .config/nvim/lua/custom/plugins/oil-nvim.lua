return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
		skip_confirm_for_simple_edits = true,
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "[O]IL: Open parent directory" }),
	require("which-key").add({
		{ "<leader>o", "<CMD>Oil<CR>", desc = "[O]IL: Open parent directory", icon = "󰏇" },
	}),
}
