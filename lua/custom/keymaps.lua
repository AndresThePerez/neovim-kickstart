-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local trim_spaces = true
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

return {
  vim.keymap.set('n', '<leader>w', '<cmd>:w<CR>', { desc = '[S]ave' }),
  vim.keymap.set('n', '<leader>W', '<cmd>:w!<CR>', { desc = '[S]ave (Force)' }),
  vim.keymap.set('n', '<leader>wq', '<cmd>:wq!<CR>', { desc = '[S]ave and [Q]uit (Force)' }),
  vim.keymap.set('n', '<leader>q', '<cmd>:q<CR>', { desc = '[Q]uit' }),
  vim.keymap.set('n', '<leader>Q', '<cmd>:q!<CR>', { desc = '[Q]uit (force)' }),
  -- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { buffer = 0 }),
  -- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { buffer = 0 }),
  -- vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { buffer = 0 }),
  -- vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { buffer = 0 }),
  -- vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { buffer = 0 }),
  -- vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { buffer = 0 }),
  -- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], { buffer = 0 }),
  vim.keymap.set('n', '<leader>tt', '<cmd>exe v:count1 . "ToggleTerm"<CR>', { desc = 'Toggle terminal' }),
  -- if you only want these mappings for toggle term use term://*toggleterm#* instead
  vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()',
}
