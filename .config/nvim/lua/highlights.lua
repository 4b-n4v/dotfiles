local M = {}
function M.setup()
  local custom_highlight = vim.api.nvim_create_augroup('CustomHighlight', {})
  vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = 'moonfly',
    callback = function()
      vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineTerm', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineTermNC', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'MiniStatuslineFilename', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineTermNC', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineTermNC', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineTermNC', { fg = '#bdbdbd', bg = '#080808' })
      vim.api.nvim_set_hl(0, 'StatusLineTermNC', { fg = '#bdbdbd', bg = '#080808' })
    end,
    group = custom_highlight,
  })
end
return M
