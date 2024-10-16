return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  build = 'deno task --quiet build:fast',
  config = function()
    require('peek').setup({ app = 'browser'})
    vim.api.nvim_create_user_command('PreviewOpen', require('peek').open, {})
  end,
}
