local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },

  "ChristianChiarulli/nvim-ts-rainbow",

  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    dependencies = {
      {
        'junegunn/fzf',
        config = function()
          vim.fn['fzf#install']()
        end,
      },

      {
        'nvim-treesitter/nvim-treesitter',
      }

    }
  },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = 'BufEnter',
    config = function()
      require("lualine").setup {}
    end,
  },

  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {}
    end,
  },
  --  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "nvim-treesitter/nvim-treesitter",

  -- Colorschemes
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",                  -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = false,              -- Enable this to disable setting the background color
        terminal_colors = true,           -- Configure the colors used when opening a `:terminal` in Neovim
        sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = true               -- dims inactive windows
      })
      vim.cmd('colorscheme tokyonight')
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine'
  },

  "nvim-lua/plenary.nvim",
  'glepnir/dashboard-nvim',
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-t>]],
        direction = "float",
      })
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  'nvim-lualine/lualine.nvim',

  {
    'nvim-telescope/telescope.nvim',
    ft = "dashboard",
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require("telescope").setup {}
    end
  },

  {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons",     -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  },

  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
        ---Add a space b/w comment and the line
        padding = true,
        ---Whether the cursor should stay at its position
        sticky = true,
        ---Lines to be ignored while (un)comment
        ignore = nil,
        ---LHS of toggle mappings in NORMAL mode
        toggler = {
          ---Line-comment toggle keymap
          line = '<leader>/',
          ---Block-comment toggle keymap
          block = 'gbc',
        },
        ---LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
          ---Line-comment keymap
          line = 'gc',
          ---Block-comment keymap
          block = 'gb',
        },
      })
    end
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "ﰊ",
          -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
          -- then these will never be used.
          default = "*",
          highlight = "NeoTreeFileIcon"
        },
        git_status = {
          symbols = {
            -- Change type
            added     = "",  -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "",  -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "✖", -- this can only be used in the git_status source
            renamed   = "", -- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "",
          }
        },
      })
    end,
  },

})
