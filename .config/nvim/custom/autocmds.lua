Idgroup = vim.api.nvim_create_augroup("MyGroup",{clear = true})
vim.api.nvim_clear_autocmds({group = "MyGroup"})
local autocmd=vim.api.nvim_create_autocmd
autocmd(
  "InsertEnter",
  {
    pattern = { "*" },
    command = "normal zz",
    group = Idgroup
  }
)
autocmd(
  "VimLeave",
  {
    pattern = { "*" },
    command = "set guicursor=a:ver20",
    group = Idgroup
  }
)
autocmd(
  "BufEnter",
  {
    pattern = "*",
    command = "ColorizerAttachToBuffer",
    group = Idgroup
  }
)
autocmd(
  "BufEnter",
  {
    pattern = { "*" },
    -- command = "set wrap list listchars=space:· linebreak"
    command = "set wrap nolist listchars=space:· linebreak",
    group = Idgroup
  }
)
autocmd(
  "BufEnter",
  {
    pattern = { "*.md" },
    command = "set nowrap nolist nolinebreak",
    group = Idgroup
  }
)
