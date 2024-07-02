return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "[O]IL: Open parent directory" }),
}
