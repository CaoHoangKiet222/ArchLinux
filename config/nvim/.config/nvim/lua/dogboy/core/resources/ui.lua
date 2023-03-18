return {
  {
    "rcarriga/nvim-notify",
    config = function() require("dogboy.config.notify") end,
  },

  {
    "loctvl842/neo-tree.nvim",
    config = function() require("dogboy.config.neo-tree") end,
  },

  {
    "akinsho/bufferline.nvim",
    config = function() require("dogboy.config.bufferline") end,
  },

  {
    "loctvl842/breadcrumb.nvim",
    lazy = true,
    init = function() require("dogboy.config.breadcrumb") end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function() require("dogboy.config.lualine") end,
  },

  {
    "akinsho/toggleterm.nvim",
    config = function() require("dogboy.config.toggleterm") end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = function() require("dogboy.config.indent-blankline") end,
  },

  -- {
  --   "goolord/alpha-nvim",
  --   event = "VimEnter",
  --   config = function() require("dogboy.config.alpha") end,
  -- },

  {
    "glepnir/dashboard-nvim",
    lazy = false,
    event = "VimEnter",
    -- dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function() require("dogboy.config.dashboard") end,
  },

  {
    "nvim-tree/nvim-web-devicons",
    config = function() require("dogboy.config.nvim-web-devicons") end,
  },

  {
    "petertriho/nvim-scrollbar",
    config = function() require("dogboy.config.scrollbar") end,
  },

  {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    config = function() require("dogboy.config.barbecue") end,
  },

  {
    "folke/noice.nvim",
    lazy = true,
    config = function() require("dogboy.config.noice") end,
  },

  {
    "echasnovski/mini.indentscope",
    lazy = true,
    enabled = true,
    -- lazy = true,
    version = false, -- wait till new 0.7.0 release to put it back on semver
    -- event = "BufReadPre",
    opts = {
      symbol = "▏",
      -- symbol = "│",
      options = { try_as_border = false },
    },
    config = function(_, opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
        },
        callback = function() vim.b.miniindentscope_disable = true end,
      })
      require("mini.indentscope").setup(opts)
    end,
  },

  -- {
  --   "anuvyklack/windows.nvim",
  --   event = "WinNew",
  --   dependencies = {
  --     { "anuvyklack/middleclass" },
  --     { "anuvyklack/animation.nvim", enabled = true },
  --   },
  --   config = function() require("dogboy.config.windows") end,
  -- },

  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function() require("dogboy.config.colorizer") end,
    {
      "s1n7ax/nvim-window-picker",
      config = function() require("window-picker").setup() end,
    },
  },
}
