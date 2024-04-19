return {
  'numToStr/Comment.nvim',
  event = { 'BufRead', 'BufNewFile' },
  dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
  config = function()
    local comment = require 'Comment'

    local ts_context_commentstring = require 'ts_context_commentstring.integrations.comment_nvim'

    comment.setup {
      -- for commenting tsx, jsx, svelte and html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
    }
  end,
}
