-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- use 'neoclide/coc.nvim'

  use "nvim-tree/nvim-web-devicons"

  use 'folke/tokyonight.nvim'

  use "nvim-lua/plenary.nvim"

  use 'glepnir/dashboard-nvim'

  use 'nvim-lualine/lualine.nvim'
 
  use({
  "utilyre/barbecue.nvim",
  tag = "*",
  requires = {
  "SmiteshP/nvim-navic",
  "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
  require("barbecue").setup()
  end,
  })

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

  use {
	"windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}

 end)

