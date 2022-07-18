return {
   ["xiyaowong/nvim-transparent"] = {
      config =function ()
         require("transparent").setup({
            enable = true, -- boolean: enable transparent
            extra_groups = { -- table/string: additional groups that should be cleared
             -- In particular, when you set it to 'all', that means all available groups

             -- example of akinsho/nvim-bufferline.lua
            "BufferLineTabClose",
            "BufferlineBufferSelected",
            "BufferLineFill",
            "BufferLineBackground",
            "BufferLineSeparator",
            "BufferLineIndicatorSelected",
            },
            exclude = {}, -- table: groups you don't want to clear
      })
   end
   },
   ["catppuccin/nvim"] = {
      config = function ()
         local present, catppuccin = pcall(require("catppuccin"))
         if present then
            catppuccin.setup(
            {
               transparent_background = true
            }
            )
         end
      end
   },
   ["Pocco81/AutoSave.nvim"] = {
    config = function()
      local present, autosave = pcall(require("autosave"))
      if present then
        autosave.setup(
        {
          enabled = true,
          execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
          events = {"InsertLeave", "TextChanged"},
          conditions = {
              exists = true,
              filename_is_not = {},
              filetype_is_not = {},
              modifiable = true
          },
          write_all_buffers = false,
          on_off_commands = true,
          clean_command_line_interval = 0,
          debounce_delay = 200
        }
      )
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
  ["github/copilot.vim"] = {}
}
