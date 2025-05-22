return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    { 'nvim-lua/plenary.nvim' },
    {
      'OXY2DEV/markview.nvim',
      lazy = false,
    },

    -- see above for full list of optional dependencies ☝️
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/Documents/Vault',
        overrides = {
          notes_subdir = '000 - Notes',
        },
      },
    },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = '300 - Journal & Essays',
      -- -- Optional, if you want to change the date format for the ID of daily notes.
      -- date_format = '%Y-%m-%d',
      -- -- Optional, if you want to change the date format of the default alias of daily notes.
      -- alias_format = '%B %-d, %Y',
      -- -- Optional, default tags to add to each new daily note created.
      -- default_tags = { 'daily-notes' },
      -- -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      -- template = nil,
      -- -- Optional, if you want `Obsidian yesterday` to return the last work day or `Obsidian tomorrow` to return the next work day.
      -- workdays_only = true,
    },
    completion = {
      blink = true,
      nvim_cmp = false,
      min_chars = 2,
      match_case = false,
      default = false,
    },
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ['gf'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ['<leader>ach'] = {
        action = function()
          return require('obsidian').util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Smart action depending on context: follow link, show notes with tag, toggle checkbox, or toggle heading fold
      ['<cr>'] = {
        action = function()
          return require('obsidian').util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      },
    },
    templates = {
      folder = '998 - templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
    new_notes_location = 'notes_subdir',
    -- Optional, customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ''
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. '-' .. suffix
    end,
  },
}
