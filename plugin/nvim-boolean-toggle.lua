if vim.g.loaded_nvim_boolean_toggle == 1 then
  return
end
vim.g.loaded_nvim_boolean_toggle = 1

local keymap = vim.keymap

keymap.set('n', '<C-a>', require('nvim-boolean-toggle').toggle_boolean_or_increment, { desc = 'Toggle boolean or increment' })
