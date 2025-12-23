vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.tabstop = 8 -- Show existing tab characters as 8 columns wide
vim.opt.shiftwidth = 4 -- Use 4 columns for each indent step
vim.opt.softtabstop = 4 -- Pressing <Tab> inserts 4 spaces/moves to 4-col stop
vim.opt.expandtab = true -- Use spaces instead of tab characters
vim.opt.autoindent = true -- Copy the indentation from the previous line
vim.opt.smartindent = true -- Smart indentation for C-like languages

-- Config files
require("config.lazy")
require("config.keymaps")
require("lsp")

vim.opt.clipboard = "unnamedplus"

vim.cmd([[colorscheme tokyonight]])

require("lint").linters_by_ft = {
  typescriptreact = { "eslint_d" },
  typescript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  javascript = { "eslint_d" },
}


vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
require("mini.surround").setup()

require("copilot").setup()
