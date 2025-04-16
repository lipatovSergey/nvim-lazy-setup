-- ~/.config/nvim/lua/plugins/toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<leader>tt]],
      direction = "float", -- можно изменить на "horizontal" по вкусу
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
    })

    local Terminal = require("toggleterm.terminal").Terminal

    -- Горизонтальный терминал
    local horizontal_term = Terminal:new({ direction = "horizontal" })
    vim.keymap.set("n", "<leader>tt", function()
      horizontal_term:toggle()
    end, { desc = "Toggle Terminal (horizontal)" })

    -- Вертикальный терминал
    local vertical_term = Terminal:new({ direction = "vertical" })
    vim.keymap.set("n", "<leader>tv", function()
      vertical_term:toggle()
    end, { desc = "Toggle Terminal (vertical)" })

    -- Терминал во вкладке
    local tab_term = Terminal:new({ direction = "tab" })
    vim.keymap.set("n", "<leader>tf", function()
      tab_term:toggle()
    end, { desc = "Toggle Terminal (tab)" })

    -- Выход из терминального режима по Esc
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

    -- Навигация между окнами из терминала (Ctrl+h/j/k/l)
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
  end,
}
