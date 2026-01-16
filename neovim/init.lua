-- 确保首先加载基础配置
require("config.options")
require("config.keymaps")
require("config.autocmds")
-- 最后加载插件管理器
require("config.lazy")

require("nvim-treesitter").install { 'c', 'cpp','rust', 'javascript','lua','html','vim',
				   'vimdoc', 'xml', 'python', 'markdown',
				   'markdown_inline', 'json', 'bash', 'zsh'}


vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')
