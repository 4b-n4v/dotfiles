---- Using lazy.nvim
return {
  {
    'metalelf0/black-metal-theme-neovim',
    lazy = false,
    priority = 1000,
    config = function()
      require('black-metal').setup {
        theme = 'bathory',
        variant = 'dark',
      }
    end,
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'bluz71/vim-moonfly-colors',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.moonflyWinSeparator = 2
      vim.g.moonflyCursorColor = true
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
    end,
  },
  {
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
    end,
  },
  {
    'tjdevries/colorbuddy.nvim',
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = 'dragon', -- Load "wave" theme
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      }
    end,
  },
  {
    'ficcdaf/ashen.nvim',
    -- optional but recommended,
    -- pin to the latest stable release:
    -- tag = '*',
    lazy = false,
    priority = 1000,
    -- configuration is optional!
    opts = {
      -- your settings here
    },
  },
  {
    'WTFox/jellybeans.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'luisiacc/gruvbox-baby',
    lazy = false,
    priority = 1000,
    -- config = function()
    --   -- Optionally configure and load the colorscheme
    --   -- directly inside the plugin declaration.
    --   vim.g.gruvbox_material_enable_italic = true
    --   vim.cmd.colorscheme 'gruvbox-material'
    -- end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
