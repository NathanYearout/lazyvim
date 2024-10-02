return {
  {
    "crnvl96/lazydocker.nvim",
    keys = {
      {
        "<leader>dd",
        function()
          require("lazydocker").toggle()
        end,
        desc = "Toggle Lazydocker",
      },
    },
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },
}
