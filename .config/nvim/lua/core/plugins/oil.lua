return {
  'stevearc/oil.nvim',
  opts = {
    delete_to_trash = false,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
    },
  },

  -- Oil Keymaps
  vim.keymap.set('n', '<space>w', '<cmd>source %<CR>'),
  vim.keymap.set('n', '<leader>o', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
}
