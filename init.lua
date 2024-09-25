require("config.lazy")

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    vim.cmd("Neotree show")

    local aerial_ok, aerial = pcall(require, "aerial")
    if aerial_ok then
      vim.defer_fn(function()
        vim.cmd("AerialToggle! left")
      end, 100)
    else
      print("Aerial not found.")
    end
  end,
})
