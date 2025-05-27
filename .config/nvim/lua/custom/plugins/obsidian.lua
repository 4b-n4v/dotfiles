return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'OXY2DEV/markview.nvim',
      lazy = false,
    },
  },
  ---@module 'obsidian'
  ---@type obsidian.config.ClientOpts
  opts = {

    -- Vaults
    workspaces = {
      {
        name = 'vault',
        path = '~/Documents/Vault/',
        overrides = {
          notes_subdir = '000 - Notes',
        },
      },
    },

    -- Where to put new notes
    new_notes_location = 'notes_subdir',

    -- Daily Notes
    daily_notes = {
      folder = '300 - Journal & Essays',
      default_tags = { 'daily-notes' },
    },

    -- Completion
    completion = {
      blink = true,
    },

    -- Templates
    templates = {
      folder = '998 - templates',
    },

    -- Images
    attachments = {
      img_folder = '999 - imagebank',
      ---@return string
      img_name_func = function()
        return string.format('Pasted image %s', os.date '%Y%m%d%H%M%S')
      end,

      ---@param client obsidian.Client
      ---@param path obsidian.Path the absolute path to the image file
      ---@return string
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        return string.format('![%s](%s)', path.name, path)
      end,
    },

    -- Note_ID Func
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      local suffix = ''
      if title ~= nil then
        suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. '-' .. suffix
    end,

    -- How to follow URLS
    ---@param url string
    follow_url_func = function(url)
      vim.ui.open(url, { cmd = { 'firefox' } })
    end,

    -- Sets how you follow images
    ---@param img string
    follow_img_func = function(img)
      vim.ui.open(img)
      vim.ui.open(img, { cmd = { 'feh' } })
    end,
    callbacks = {
      enter_note = function(client, note)
        local bufnr = vim.api.nvim_get_current_buf()
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, {
            buffer = bufnr,
            noremap = true,
            silent = true,
            desc = desc,
          })
        end

        -- Define Obsidian-local mappings
        map('n', '<leader>gbl', '<cmd>ObsidianBacklinks<cr>', 'Show Obsidian backlinks')
        map('n', '<leader>go', '<cmd>ObsidianOpen<cr>', 'Open in Obsidian app')
        map('n', '<leader>gt', '<cmd>ObsidianTags<cr>', 'Show tags')
        map('n', '<leader>gg', '<cmd>ObsidianQuickSwitch<cr>', 'Show tags')
        map('v', '<leader>gl', '<cmd>ObsidianLink<cr>', 'Link to note')
      end,
    },
  },
}
