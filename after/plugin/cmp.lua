local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end


local cmp_action = require('lsp-zero').cmp_action()

cmp.setup {
  view = {
    entries = "custom" -- can be "custom", "wildmenu" or "native"
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },

  window = {
    documentation = cmp.config.window.bordered(),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip', keyword_length = 2 },
    { name = 'path' },
    { name = 'buffer',  keyword_length = 3 },
  },

  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<C-e>'] = cmp.mapping.abort(),
  },
}

