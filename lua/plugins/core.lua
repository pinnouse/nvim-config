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
    dependencies = {
      "hrsh7th/cmp-cmdline",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, {
        name = "path",
      })
      table.insert(opts.sources, {
        name = "cmdline",
        options = {
          ignore_cmds = { "Man", "!" },
        },
      })
    end,
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
