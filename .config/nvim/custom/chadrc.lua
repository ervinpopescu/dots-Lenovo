
local M = {}

M.ui = {
   theme = "catppuccin",
}

M.plugins = {
  override={
    ["kyazdani42/nvim-tree.lua"] = {
      view = {
        hide_root_folder = false,
      }
    }
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    }
  },
  user = require "custom.plugins"
}

M.mappings = require "custom.mappings"

return M
