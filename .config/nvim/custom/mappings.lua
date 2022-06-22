local M = {}

M.disabled = {
  n = {
    ["<leader>q"] = ""
  }
}

M.general = {
  n = {
    ['<leader>q'] = {"<cmd>q<cr>", "quit"}
  }
}

M.nvimtree = {
   n = {
      ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
   },
}

return M
