return {

  ["Pocco81/AutoSave.nvim"] = {
    config = function()
      local present, autosave = pcall(require("autosave"))
      if present then
        autosave.setup()
      end
    end,
  },
  ["norcalli/nvim-colorizer.lua"] = {
    config = function()
      local present, colorizer = pcall(require("colorizer"))
      if present then
        colorizer.setup(
        {
          RGB = true, -- RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        })
      end
    end,
  },
  ["ethanholz/nvim-lastplace"] = {
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && npm install",
    ft = "markdown",
    setup = function()
      vim.g.mkdp_auto_start = 1
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_browser = "/home/ervin/.local/bin/md-preview"
      vim.g.mkdp_theme = 'dark'
    end
  },
  ["cappyzawa/trim.nvim"] = {
    config = function ()
     require('trim').setup({
      -- if you want to ignore markdown file.
      -- you can specify filetypes.
      disable = {"markdown"},

      -- if you want to ignore space of top
      patterns = {
        [[%s/\s\+$//e]],
        [[%s/\($\n\s*\)\+\%$//]],
        [[%s/\(\n\n\)\n\+/\1/]],
      },
    })
    end
  },
  ['prettier/vim-prettier'] = {},
  ["goolord/alpha-nvim"] = {
         disable = false,
  },
}