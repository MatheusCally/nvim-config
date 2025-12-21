return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      typescriptreact = { "prettier"},
      typescript = { "prettier"},
      javascript = { "prettier"},
    },
    format_on_save = { -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    }
  },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format()
      end,
      mode = { "n", "x" },
      desc = "Format File",
    },
    {
      "<leader>cF",
      function()
        require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
      end,
      mode = { "n", "x" },
      desc = "Format Injected Langs",
    },
  },
}
