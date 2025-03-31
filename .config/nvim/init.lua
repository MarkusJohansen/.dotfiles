-- init.lua
require("core.options")
require("core.keymaps")
require("core.plugins")

-- Load plugin configs
require("plugins.lualine")
require("plugins.filetree")
require("plugins.treesitter")


-- Auto-open nvim-tree on startup if no file is passed
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("nvim-tree.api").tree.open()
    end
  end
})
