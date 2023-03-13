local config = {}

function config.dashboard()
  local db = require('dashboard')
  db.setup({
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      project = {
        enable = true,
      },
      disable_move = true,
      shortcut = {
        { desc = 'Update', icon = ' ', group = '@variable', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          desc = 'Files',
          group = '@variable',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          icon = ' ',
          desc = 'Apps',
          group = '@variable',
          action = 'Telescope app',
          key = 'a',
        },
        {
          icon = ' ',
          desc = 'dotfiles',
          group = '@variable',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
    -- preview = {
    --   command = 'cat | lolcat -F 0.3',
    --   file_path = vim.env.HOME .. '/.config/nvim/static/neovim.cat',
    --   file_height = 11,
    --   file_width = 70,
    -- },
  })
end

return config
