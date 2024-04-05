vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
    }

    vim.keymap.set('n', '<leader>tt', ':Neotree focus<CR>', { desc = 'Open NeoTree', silent = true })
    vim.keymap.set('n', '<leader>tf', ':Neotree reveal<CR>', { desc = 'Open NeoTree with focus on current file', silent = true })
  end,
}
