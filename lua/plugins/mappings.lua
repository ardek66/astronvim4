-- [nfnl] Compiled from lua/plugins/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
local buffer = require("astrocore.buffer")
local function _1_()
  return buffer.nav((((_G.vim.v.count > 0) and _G.vim.v.count) or 1))
end
local function _2_()
  return buffer.nav(( - (((_G.vim.v.count > 0) and _G.vim.v.count) or 1)))
end
return {"AstroNvim/astrocore", opts = {mappings = {n = {L = _1_, H = _2_}}}}
