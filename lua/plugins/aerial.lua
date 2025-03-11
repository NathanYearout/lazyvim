return {
  "stevearc/aerial.nvim",
  lazy = false,
  opts = {
    highlight_on_hover = true,
    autojump = true,
    layout = {
      placement = "edge",
      default_direction = "left",
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>cs", "<cmd>AerialToggle! left<CR>", desc = "Toggle Aerial" },
  },
}
