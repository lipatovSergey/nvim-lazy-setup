return {
  "uga-rosa/ccc.nvim",
  event = "VeryLazy",
  config = function()
    -- Включаем true color
    vim.opt.termguicolors = true

    local ccc = require("ccc")
    local mapping = ccc.mapping

    ccc.setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })
  end,
}
