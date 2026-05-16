return{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
  },

  version = false,
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
	{ name = 'nvim_lsp' },
	-- { name = 'luasnip' }, -- For luasnip users.
      }, {
	{ name = 'buffer' },
      })
    })
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- vim.lsp.config('lua-ls', {
    --   capabilities = capabilities
    -- })
    -- vim.lsp.enable('lua-ls')

  end
}
