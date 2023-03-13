-- Colorscheme
require("tokyonight").setup({
	style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 	dim_inactive = false -- dims inactive windows
})

vim.cmd[[colorscheme tokyonight]]

--local colorscheme = "tokyonight-night"
--local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
--if not status_ok then
--  return
--end
