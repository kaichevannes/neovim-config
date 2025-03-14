return {
  "olacin/telescope-cc.nvim",
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "fugitive",
      callback = function()
        vim.keymap.set("n", "cc", "<cmd>Telescope conventional_commits<CR>",
          { buffer = true, silent = true })
      end
    })
  end
}
