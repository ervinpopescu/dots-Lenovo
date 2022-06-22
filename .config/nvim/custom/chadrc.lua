-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

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
