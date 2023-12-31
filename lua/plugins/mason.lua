-- [nfnl] Compiled from lua/plugins/mason.new.fnl by https://github.com/Olical/nfnl, do not edit.
local astrocore = require("astrocore")
local function _1_(_, opts)
  local overrideServers = {"clangd"}
  opts.ensure_installed = astrocore.list_insert_unique(opts.ensure_installed, {"fennel_language_server"})
  local rev
  do
    local tbl_14_auto = {}
    for k, v in ipairs(opts.ensure_installed) do
      local k_15_auto, v_16_auto = v, k
      if ((k_15_auto ~= nil) and (v_16_auto ~= nil)) then
        tbl_14_auto[k_15_auto] = v_16_auto
      else
      end
    end
    rev = tbl_14_auto
  end
  for _0, blocked in ipairs(overrideServers) do
    table.remove(opts.ensure_installed, rev[blocked])
  end
  return nil
end
return {{"williamboman/mason-lspconfig.nvim", opts = _1_}, {"jay-babu/mason-null-ls.nvim"}, {"jay-babu/mason-nvim-dap.nvim"}}
