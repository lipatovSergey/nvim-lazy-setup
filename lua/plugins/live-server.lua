return {
  'barrett-ruth/live-server.nvim',
  build = 'npm install -g live-server', -- Эта строка выполнится только если плагин не найдет live-server
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = function()
    require('live-server').setup({
      port = 5555,            -- Порт по умолчанию
      host = 'localhost',     -- Хост по умолчанию
      no_browser = false,     -- Открывать браузер при запуске
      quiet = false,          -- Отображать логи live-server'а
      root = vim.fn.getcwd(), -- Корневая директория сервера (текущая директория Neovim)
      -- Дополнительные опции можно посмотреть в :h live-server
    })
  end
}
