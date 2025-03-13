return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  build = 'deno task --quiet build:fast',
  config = function()
    require('peek').setup({ app = 'browser'})
    vim.api.nvim_create_user_command('Preview', require('peek').open, {})
  end,
}
