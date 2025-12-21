return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    branch = "main",
    config = {
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "typescriptreact", "typescript", "javascript", "java", "yaml", "lua", "python", "html" },
        callback = function()
          vim.treesitter.start()
        end,
      }),
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
