(local astrocore (require :astrocore))
{1 :nvim-treesitter/nvim-treesitter
 :opts (fn [_ opts]
         (set opts.ensure_installed
              (astrocore.list_insert_unique opts.ensure_installed
                                            :rust
                                            :nim
                                            :nim_format_string
                                            :fennel))
         opts)}
