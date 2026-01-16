return {
   {
      "hrsh7th/nvim-cmp",
      dependencies = {
	 "hrsh7th/cmp-nvim-lsp", -- LSP 来源 (最重要的)
	 "hrsh7th/cmp-buffer",   -- 当前 Buffer 来源
	 "hrsh7th/cmp-path",     -- 文件路径来源
	 "neovim/nvim-lspconfig",
      },
      config = function()
	 local cmp = require("cmp")
	 local caps = require('cmp_nvim_lsp').default_capabilities()
	 vim.lsp.config('*', {
			   capabilities = caps
	 })
	 cmp.setup({
	       completion = {
		  autocomplete = false 
	       },
	       -- 补全来源 (顺序决定优先级)
	       sources = cmp.config.sources({
		     { name = "nvim_lsp" }, -- LSP
		     { name = "path" },     -- 路径
		     { name = "buffer" },   -- 当前文件内容 (Buffer)
	       }),
	       mapping = cmp.mapping.preset.insert({
		     ['<C-n>'] = cmp.mapping.select_next_item(), -- 下一个
		     ['<C-p>'] = cmp.mapping.select_prev_item(), -- 上一个
		     ['<C-i>'] = cmp.mapping.complete(),
		     ['<C-e>'] = cmp.mapping.confirm({ select = true }), 
	       }),	       
	 })
      end,	    
   }
}
