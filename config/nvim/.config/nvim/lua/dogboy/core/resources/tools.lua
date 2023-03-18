return {
  {
    "numToStr/Comment.nvim",
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
    config = function() require("dogboy.config.comment") end,
  },

  {
    "kevinhwang91/rnvimr",
    init = function() require("dogboy.config.ranger") end,
  },

  "mg979/vim-visual-multi",

  {
    "loctvl842/compile-nvim",
    lazy = true,
    config = function() require("dogboy.config.compile") end,
  },

  {
    "filipdutescu/renamer.nvim",
    lazy = true,
    branch = "master",
    config = function() require("dogboy.config.renamer") end,
  },

  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>op",
        function()
          local peek = require("peek")
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "Peek (Markdown Preview)",
      },
    },
    opts = { theme = "dark" },
  },
  "moll/vim-bbye",
  {
    "rmagatti/auto-session",
    config = function() require("dogboy.config.auto-session") end,
  },
  {
    "rmagatti/session-lens",
    config = function() require("dogboy.config.session-lens") end,
  },
  {
    "iamcco/markdown-preview.nvim",
  },
}
