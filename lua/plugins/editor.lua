-- 编辑器增强插件
return {
  -- 猜测缩进插件
  'NMAC427/guess-indent.nvim',

  -- 各种小型独立插件/模块的集合
  {
    'echasnovski/mini.nvim',
    config = function()
      -- 更好的环绕/内部文本对象
      --
      -- 示例:
      --  - va)  - [V]isually select [A]round [)]paren (可视化选择括号周围)
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote (复制下一个引号内的内容)
      --  - ci'  - [C]hange [I]nside [']quote (更改引号内的内容)
      require('mini.ai').setup { n_lines = 500 }

      -- 添加/删除/替换环绕符（括号、引号等）
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren (在内侧单词周围添加括号)
      -- - sd'   - [S]urround [D]elete [']quotes (删除引号)
      -- - sr)'  - [S]urround [R]eplace [)] ['] (将括号替换为引号)
      require('mini.surround').setup()

      -- 简单易用的状态栏。
      --  如果您不喜欢它，可以删除此设置调用，
      --  并尝试其他一些状态栏插件
      local statusline = require 'mini.statusline'
      -- 如果您有 Nerd Font，请将 use_icons 设置为 true
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- 您可以通过覆盖状态栏中各个部分的
      -- 默认行为来配置它们。例如，这里我们将
      -- 光标位置的部分设置为 LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- ... 还有更多！
      --  查看: https://github.com/echasnovski/mini.nvim
    end,
  },
}
