--
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'core.plugins.gitsigns',

  require 'core.plugins.which-key',

  require 'core.plugins.telescope',

  require 'core.plugins.lspconfig',

  require 'core.plugins.conform',

  require 'core.plugins.cmp',

  require 'core.plugins.colorscheme',

  require 'core.plugins.todo-comments',

  require 'core.plugins.mini',

  require 'core.plugins.treesitter',

  require 'core.plugins.oil',

  require 'core.plugins.flash',

  require 'core.plugins.autopairs',

  -- require 'core.plugins.neo-tree',

  require 'core.plugins.telescope-undo',
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  require 'core.plugins.debug',
  -- require 'core.plugins.indent_line',
  require 'core.plugins.lint',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- { import = 'custom.plugins' },
  require 'custom.plugins.alpha-nvim',
  require 'custom.plugins.leetcode',
  require 'custom.plugins.arrow-nvim',

  require 'custom.plugins.nvim-highlight-colors',
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
