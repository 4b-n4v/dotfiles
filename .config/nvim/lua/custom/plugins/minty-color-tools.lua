return {
	{ "nvchad/volt", lazy = true },
	{ "nvchad/minty", lazy = true },
	vim.keymap.set("n", "<leader>mh", function()
		-- You can pass additional configuration to Telescope to change the theme, layout, etc.
		require("minty.huefy").open()
	end, { desc = "[M]inty Color Picker Hue" }),
	vim.keymap.set("n", "<leader>ms", function()
		-- You can pass additional configuration to Telescope to change the theme, layout, etc.
		require("minty.shades").open()
	end, { desc = "[M]inty Color Picker Shades" }),
}
