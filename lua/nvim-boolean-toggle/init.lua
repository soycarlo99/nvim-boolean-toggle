local M = {}

function M.toggle_boolean_or_increment()
  local word = vim.fn.expand('<cword>')
  local replacements = {
    ['true'] = 'false',
    ['True'] = 'False',
    ['TRUE'] = 'FALSE',
    ['false'] = 'true',
    ['False'] = 'True',
    ['FALSE'] = 'TRUE'
  }
  
  if replacements[word] then
    -- Use API calls instead of normal! command
    local new_word = replacements[word]
    local col = vim.fn.col('.')
    vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes('ciw' .. new_word .. '<Esc>', true, false, true),
      'n', true
    )
    vim.fn.cursor(vim.fn.line('.'), col) -- Restore cursor position
  else
    -- Use proper count handling
    local count = vim.v.count1
    vim.api.nvim_feedkeys(
      count .. vim.api.nvim_replace_termcodes('<C-a>', true, false, true),
      'n', true
    )
  end
end

return M
