return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      mode = "float", -- можно "term", "tab", "toggleterm", "vimux", "float", "better_term"
      focus = true,
      startinsert = true,
      float = {
        border = "rounded",
        width = 0.8,
        height = 0.8,
        x = 0.5,
        y = 0.5,
        border_hl = "FloatBorder",
      },
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "deno run",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        c = {
          "cd $dir &&",
          "gcc $fileName -o /tmp/$fileNameWithoutExt &&",
          "/tmp/$fileNameWithoutExt && rm /tmp/$fileNameWithoutExt",
        },
      },
    })
  end,
}
