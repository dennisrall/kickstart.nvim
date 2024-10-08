function ReloadBuffer()
  local temp_sync_value = vim.g.aider_buffer_sync
  vim.g.aider_buffer_sync = 0
  vim.api.nvim_exec2('e!', { output = false })
  vim.g.aider_buffer_sync = temp_sync_value
end
return {
  'joshuavial/aider.nvim',
  config = function()
    require('aider').setup {
      auto_manage_context = true,
      default_bindings = false,
    }
  end,
  keys = {
    {
      '<leader>ao',
      function()
        require('aider').AiderOpen()
      end,
      desc = 'open aider ai coding assistant',
      silent = true,
    },
    { '<leader>as', ReloadBuffer, desc = 'sync buffer modified by Aider', silent = true },
  },
}
