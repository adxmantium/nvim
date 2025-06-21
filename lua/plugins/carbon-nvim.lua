-- Available Commands
-- :Carbon - calls create_screenshot() and gets snippet from clipboard
return {
  "adxmantium/carbon-nvim",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local carbon = require('carbon-nvim')
    carbon.setup()

    vim.keymap.set('v', '<leader>img', function()
      carbon.create_screenshot()
    end, {
      desc = 'Create carbon screenshot of selected code',
      noremap = true,
      silent = true
    })
  end
}
