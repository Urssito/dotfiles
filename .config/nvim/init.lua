-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard = "unnamedplus"

require("conform").setup({
  formatters_by_ft = {
    -- Note: conform.nvim registers python-xmlformatter as "xmlformat"
    xml = { "xmlformat" },
    -- Alternative if using xmllint: xml = { "xmllint" }
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
