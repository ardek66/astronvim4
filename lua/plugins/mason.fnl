(local astrocore (require :astrocore))
[{1 :williamboman/mason-lspconfig.nvim
  :opts (fn [_ opts]
          (local overrideServers [:clangd])
          (set opts.ensure_installed
               (astrocore.list_insert_unique opts.ensure_installed
                                             [:fennel_language_server]))
          (let [rev (collect [k v (ipairs opts.ensure_installed)]
                      (values v k))]
            (each [_ blocked (ipairs overrideServers)]
              (table.remove opts.ensure_installed (. rev blocked)))
            opts))}
 {1 :jay-babu/mason-null-ls.nvim}
 {1 :jay-babu/mason-nvim-dap.nvim}]
