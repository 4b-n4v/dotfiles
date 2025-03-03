return {
  'stevearc/oil.nvim',
  opts = {},

  -- Oil Keymaps
  vim.keymap.set('n', '<space>w', '<cmd>source %<CR>'),
  vim.keymap.set('n', '<leader>o', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
}
