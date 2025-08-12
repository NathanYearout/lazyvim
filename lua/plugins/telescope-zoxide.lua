return {
  {
    "jvgrootveld/telescope-zoxide",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>fz",
        function()
          require("telescope").extensions.zoxide.list()
        end,
        desc = "Find directory (zoxide)",
      },
    },
    config = function()
      require("telescope").load_extension("zoxide")
    end,
  },
}
