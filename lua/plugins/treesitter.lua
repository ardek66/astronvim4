-- [nfnl] Compiled from lua/plugins/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
local astrocore = require("astrocore")
local function _1_(_, opts)
  opts.ensure_installed = astrocore.list_insert_unique(opts.ensure_installed, {"rust", "nim", "nim_format_string", "fennel"})
  return opts
end
return {"nvim-treesitter/nvim-treesitter", opts = _1_}
