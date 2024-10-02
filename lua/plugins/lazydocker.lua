return {
  {
    "LazyVim/LazyVim",
    keys = {
      {
        "<leader>dd",
        function()
          require("lazyvim.util").float_term({ "lazydocker" })
        end,
        desc = "Open Lazydocker",
      },
    },
  },
}
