return {
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
    config = function(_, _)
      vim.g.typst_conceal = 2
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- rust_analyzer = {},
        templ = {},
        pyright = {},
        tsserver = {},
        racket_langserver = {},
        ruff_lsp = {},
        typst_lsp = {
          settings = {
            exportPdf = "onType",
          },
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.root_dir = opts.root_dir
        or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.fish_indent,
        nls.builtins.diagnostics.fish,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.shfmt,
        nls.builtins.formatting.stylua,
        nls.builtins.code_actions.eslint_d,
      })
    end,
  },
}
