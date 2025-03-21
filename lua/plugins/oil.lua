return {
  {
    "stevearc/oil.nvim",
    keys = {
      { "<leader>o", "<cmd>Oil --float<CR>", desc = "Open Oil in Floating Window" },
    },
    opts = {
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 5,
        border = "rounded",
        win_options = {
          winblend = 10,
        },
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
