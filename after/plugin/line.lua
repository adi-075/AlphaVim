require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'dracula',
    theme = 'nightfly',
    section_separators = { " ", " " },
    component_separators = { "│", "│" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    -- GIT settings
    lualine_b = {
      { "branch", icon = "" },
      {
        "diff",
        colored = true,
        diff_color = {
          added    = { fg = "#28A745" },
          modified = { fg = "#DBAB09" },
          removed  = { fg = "#D73A49" }
        },
        symbols = {
          added    = " ",
          modified = " ",
          removed  = " "
        }
      }
    },
    lualine_c = {},
    lualine_x = {
      {
        "diagnostics",
        sources = { "nvim_lsp" },
        sections = { "error", "warn", "info", "hint" },
        diagnostics_color = {
          error = { fg = "#AF0000" },
          warn  = { fg = "#D75F00" },
          info  = { fg = "#0087AF" },
          hint  = { fg = "#008700" }
        },
        symbols = {
          error = " ",
          warn  = " ",
          info  = " ",
          hint  = " "
        }
      }
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = { 'neo-tree', 'quickfix', 'toggleterm', 'symbols-outline' }
}
