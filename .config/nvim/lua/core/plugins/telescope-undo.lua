return {
  'debugloop/telescope-undo.nvim',
  dependencies = { -- note how they're inverted to above example
    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
  },
  opts = {
    extensions = {
      undo = {
        use_delta = true,
        use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
        side_by_side = false,
        vim_diff_opts = {
          ctxlen = vim.o.scrolloff,
        },
        entry_format = 'state #$ID, $STAT, $TIME',
        time_format = '',
        saved_only = false,
      },
    },
  },
  config = function(_, opts)
    -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
    -- configs for us. We won't use data, as everything is in it's own namespace (telescope
    -- defaults, as well as each extension).
    require('telescope').setup(opts)
    require('telescope').load_extension 'undo'
  end,
  vim.keymap.set('n', '<leader>u', '<cmd>Telescope undo<cr>'),
}
