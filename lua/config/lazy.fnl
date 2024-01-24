(let [lazypath (.. (_G.vim.fn.stdpath :data) :/lazy/lazy.nvim)]
  (when (not (_G.vim.loop.fs_stat lazypath))
    (set _G.vim.g.astronvim_first_install true)
    (_G.vim.fn.system [:git
                       :clone
                       "--filter=blob:none"
                       "https://github.com/folke/lazy.nvim.git"
                       :--branch=stable
                       lazypath]))
  (_G.vim.opt.rtp:prepend (or _G.vim.env.LAZY lazypath)))

(local lazy-nvim (require :lazy))
(lazy-nvim.setup {:spec [{1 :AstroNvim/AstroNvim
                          :branch :v4
                          :import :astronvim.plugins}
                         {1 :AstroNvim/astrocommunity :branch :v4}
                         {:import :astrocommunity.colorscheme.catppuccin}
                         {:import :astrocommunity.pack.rust}
                         {:import :astrocommunity.pack.python}
                         {:import :astrocommunity.pack.cpp}
                         {:import :astrocommunity.pack.cmake}
                         {:import :astrocommunity.pack.lua}
                         {:import :astrocommunity.git.neogit}
                         {:import :astrocommunity.editing-support.rainbow-delimiters-nvim}
                         {:import :astrocommunity.editing-support.ultimate-autopair-nvim}
                         {:import :astrocommunity.motion.nvim-surround}
                         {:import :astrocommunity.motion.leap-nvim}
                         {:import :plugins}]
                  :performance {:rtp {:disabled_plugins [:gzip
                                                         :netrwPlugin
                                                         :tarPlugin
                                                         :tohtml
                                                         :zipPlugin]}}})
