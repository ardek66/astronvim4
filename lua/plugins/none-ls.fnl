(local null_ls (require :null-ls))
{1 :nvimtools/none-ls.nvim
 :opts (fn [_ config]
         (set config.sources [null_ls.builtins.formatting.fnlfmt])
         config)}
