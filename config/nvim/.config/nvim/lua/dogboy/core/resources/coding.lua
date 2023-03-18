return {
  "L3MON4D3/LuaSnip",

  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_snipmate").lazy_load()
    end,
  },

  {
    "mattn/emmet-vim",
    init = function() require("dogboy.config.emmet") end,
  },

  {
    "hrsh7th/nvim-cmp",
    commit = "0e436ee23abc6c3fe5f3600145d2a413703e7272",
    event = "InsertEnter",
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function() require("dogboy.config.cmp") end,
  },

  "lvimuser/lsp-inlayhints.nvim",

  {
    "ray-x/lsp_signature.nvim",
    config = function() require("dogboy.config.lsp-signature") end,
  },
}
