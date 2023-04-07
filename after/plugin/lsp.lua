local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})


lsp.setup_nvim_cmp({
  formatting = {
    -- changing the order of fields so the icon is the first
    --fields = {'abbr', 'kind', 'menu'},
    fields = { 'kind', 'abbr', 'menu' },
    -- here is where the change happens
    format = function(entry, vim_item)
      --     Alternate Icons for menu
      --      local menu_icon = {
      --        nvim_lsp = 'λ',
      --        luasnip = '⋗',
      --        buffer = 'Ω',
      --        path = '🖫',
      --        nvim_lua = 'Π',
      --      }

      local kind_icons = {
        Text = '  ',
        Method = '  ',
        Function = '  ',
        Constructor = '  ',
        Field = '  ',
        Variable = '  ',
        Class = '  ',
        Interface = '  ',
        Module = '  ',
        Property = '  ',
        Unit = '  ',
        Value = '  ',
        Enum = '  ',
        Keyword = '  ',
        Snippet = '  ',
        Color = '  ',
        File = '  ',
        Reference = '  ',
        Folder = '  ',
        EnumMember = '  ',
        Constant = '  ',
        Struct = '  ',
        Event = '  ',
        Operator = '  ',
        TypeParameter = '  ',
      }
      -- Kind Icons
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)

      --source
      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[LaTeX]",
      })[entry.source.name]
      return vim_item
    end,
  },
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
lsp.setup()
