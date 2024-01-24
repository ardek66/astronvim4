(local buffer (require :astrocore.buffer))

{1 :AstroNvim/astrocore
 :opts {:mappings {:n {:L {1 (fn []
                               (buffer.nav (or (and (> _G.vim.v.count 0)
                                                    _G.vim.v.count)
                                               1)))
                           :desc "Next Buffer"}
                       :H {1 (fn []
                               (buffer.nav (- (or (and (> _G.vim.v.count 0)
                                                       _G.vim.v.count)
                                                  1))))
                           :desc "Prev buffer"}}}}}
