vim.api.nvim_create_autocmd('TextYankPost', {
  desc = '复制文本时高亮',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
