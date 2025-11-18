-- 按 <Esc> 清除搜索高亮
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- 诊断键位映射
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = '打开诊断 [Q]uickfix 列表' })

-- 分割窗口导航
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = '将焦点移动至左侧窗口' })
vim.keymap.set('n', '<C-j>', '<C-w><C-h>', { desc = '将焦点移动至下方窗口' })
vim.keymap.set('n', '<C-k>', '<C-w><C-h>', { desc = '将焦点移动至上方窗口' })
vim.keymap.set('n', '<C-l>', '<C-w><C-h>', { desc = '将焦点移动至右侧窗口' })
