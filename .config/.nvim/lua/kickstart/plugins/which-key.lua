--NOTE: Plugins can also be configured to run Lua code when they are loaded.
--Plugins
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- This is often very useful to both group configuration, as well as handle
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		-- opts = {
		-- 	preset = "modern",
		-- },
		config = function() -- This is the function that runs, AFTER loading
			require("which-key").setup({
				preset = "classic",
			})

			-- Document existing key chains
			require("which-key").add({
				{ "<leader>c", group = "[C]ode", icon = "" },
				{ "<leader>c_", hidden = false },
				{ "<leader>d", group = "[D]ocument", icon = "󰈙" },
				{ "<leader>d_", hidden = true },
				{ "<leader>h", group = "Git [H]unk" },
				{ "<leader>h_", hidden = true },
				{ "<leader>r", group = "[R]ename", icon = "󰑕" },
				{ "<leader>r_", hidden = true },
				{ "<leader>s", group = "[S]earch", icon = "" },
				{ "<leader>s_", hidden = true },
				{ "<leader>t", group = "[T]oggle", icon = "󰔡" },
				{ "<leader>t_", hidden = true },
				{ "<leader>w", group = "[W]orkspace", icon = "󰥟" },
				{ "<leader>w_", hidden = true },
				{ "<leader>h", desc = "Git [H]unk", mode = { "v", "n" } },
				{ "<leader>i", group = "Trees[I]tter", icon = "󰔱" },
				-- Custom Keymaps
				{ "<leader>p", '"_dP', mode = "n", desc = "[P]aste last yanked", icon = "" },
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
