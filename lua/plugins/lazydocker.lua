return {
  {
    "LazyVim/LazyVim",
    keys = {
      {
        "<leader>dd",
        function()
          require("snacks.terminal").toggle("lazydocker", {
            win = { style = "terminal", size = 0.8 },
          })
        end,
        desc = "Toggle Lazydocker",
      },
    },
  },
}
