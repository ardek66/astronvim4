-- [nfnl] Compiled from lua/plugins/none-ls.fnl by https://github.com/Olical/nfnl, do not edit.
local null_ls = require("null-ls")
local function _1_(_, config)
  config.sources = {null_ls.builtins.formatting.fnlfmt}
  return config
end
return {"nvimtools/none-ls.nvim", opts = _1_}
