-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  vim.keymap.set('n', '<leader>w', '<cmd>:w<CR>', { desc = '[S]ave' }),
  vim.keymap.set('n', '<leader>W', '<cmd>:w!<CR>', { desc = '[S]ave (Force)' }),
  vim.keymap.set('n', '<leader>wq', '<cmd>:wq!<CR>', { desc = '[S]ave and [Q]uit (Force)' }),
  vim.keymap.set('n', '<leader>q', '<cmd>:q<CR>', { desc = '[Q]uit' }),
  vim.keymap.set('n', '<leader>Q', '<cmd>:q!<CR>', { desc = '[Q]uit (force)' }),
}
