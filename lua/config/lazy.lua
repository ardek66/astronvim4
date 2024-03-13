-- [nfnl] Compiled from lua/config/lazy.fnl by https://github.com/Olical/nfnl, do not edit.
do
  local lazypath = (_G.vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
  if not _G.vim.loop.fs_stat(lazypath) then
    _G.vim.g.astronvim_first_install = true
    _G.vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
  else
  end
  do end (_G.vim.opt.rtp):prepend((_G.vim.env.LAZY or lazypath))
end
local lazy_nvim = require("lazy")
return lazy_nvim.setup({spec = {{"AstroNvim/AstroNvim", branch = "v4", import = "astronvim.plugins"}, {"AstroNvim/astrocommunity", branch = "v4"}, {import = "astrocommunity.colorscheme.catppuccin"}, {import = "astrocommunity.pack.rust"}, {import = "astrocommunity.pack.python"}, {import = "astrocommunity.pack.cpp"}, {import = "astrocommunity.pack.cmake"}, {import = "astrocommunity.pack.lua"}, {import = "astrocommunity.pack.html-css"}, {import = "astrocommunity.git.neogit"}, {import = "astrocommunity.editing-support.rainbow-delimiters-nvim"}, {import = "astrocommunity.editing-support.ultimate-autopair-nvim"}, {import = "astrocommunity.motion.nvim-surround"}, {import = "astrocommunity.motion.leap-nvim"}, {import = "plugins"}}, performance = {rtp = {disabled_plugins = {"gzip", "netrwPlugin", "tarPlugin", "tohtml", "zipPlugin"}}}})
