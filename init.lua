-- Editor Settings
require "adi.config.autocmds"
require "adi.config.options"
require "adi.config.toggleterm"

-- Keymaps
require "adi.config.keymaps"

-- UI
require "adi.config.devicons"
require "adi.config.dashboard"

vim.cmd [[hi NonText guifg=bg]]

-- Package Manager
require "plugins.lazy"
