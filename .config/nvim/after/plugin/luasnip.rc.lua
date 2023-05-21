local ls = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config({
  history = true, -- keep around last snippet local to jump back
  enable_autosnippets = true,
})
