local config = require("gruvbox").config
local colors = require("gruvbox.palette").get_base_colors(vim.o.background, config.contrast)

require("gruvbox").setup({
  overrides = {
    Function = { link = "GruvboxAqua" },
    Operator = { link = "GruvboxAqua" },
    Special = { link = "GruvboxPurple" }
  }
})
vim.cmd("colorscheme gruvbox")
