return {

  { "rcarriga/nvim-notify", opts = {
    timeout = 5000,
    background_colour = "#282828",
  } },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   event = "VeryLazy",
  -- },
  -- notifications
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.commands = {
        all = {
          -- options for the message history that you get with `:Noice`
          view = "split",
          opts = { enter = true, format = "details" },
          filter = {},
        },
      }
      opts.presets.lsp_doc_border = true
    end,
  },
  -- gruvbox theme
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      overrides = {
        Function = { link = "GruvboxAqua" },
        Operator = { link = "GruvboxAqua" },
        Special = { link = "GruvboxPurple" },
        -- String = { fg = "GruvboxDarkYellow" },
        Comment = { fg = "#958a79" },
      },
    },
  },

  -- miasma theme
  -- {
  --   "xero/miasma.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   transparent = true,
  --   config = function()
  --     vim.cmd("colorscheme miasma")
  --   end,
  -- },
  -- filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("gruvbox").setup()
      require("incline").setup({
        window = { margin = { vertical = 0, horizontal = 1 } },
        highlight = {
          groups = {
            InclineNormal = {
              guibg = "#958a79",
              guifg = "#1d2021",
            },
            InclineNormalNC = {
              default = true,
              group = "NormalFloat",
            },
          },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = true,
      }
    end,
  },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[

 ██████╗ ██████╗  █████╗ ██████╗ 
██╔════╝ ╚════██╗██╔══██╗██╔══██╗
██║  ███╗ █████╔╝███████║██████╔╝
██║   ██║ ╚═══██╗██╔══██║██╔══██╗
╚██████╔╝██████╔╝██║  ██║██║  ██║
 ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
          ]],
        },
      },
    },
  },
  --   {
  --     "nvimdev/dashboard-nvim",
  --     event = "VimEnter",
  --     opts = function(_, opts)
  --       local logo = [[
  --  ██████╗ ██████╗  █████╗ ██████╗
  -- ██╔════╝ ╚════██╗██╔══██╗██╔══██╗
  -- ██║  ███╗ █████╔╝███████║██████╔╝
  -- ██║   ██║ ╚═══██╗██╔══██║██╔══██╗
  -- ╚██████╔╝██████╔╝██║  ██║██║  ██║
  --  ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
  --           ]]
  --       logo = string.rep("\n", 8) .. logo .. "\n\n"
  --       opts.config.header = vim.split(logo, "\n")
  --     end,
  --   },
}
