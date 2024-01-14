return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
    },
    keys = {
      { "<leader>/", false },
    },
  },
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
    keys = {
      {
        "<leader>/",
        "<Plug>(comment_toggle_linewise_current)",
        mode = { "n", "x", "o" },
        desc = "Toggle Comments",
      },
    },
    lazy = false,
  },
}
