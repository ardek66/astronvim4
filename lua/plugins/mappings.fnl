(local buffer (require :astrocore.buffer))
{ 1 :AstroNvim/astrocore
  :opts {:mappings 
          {:n 
            { :L (fn [] (buffer.nav (or
                                      (and (> _G.vim.v.count 0) _G.vim.v.count) 
                                      1)))
              :H (fn [] (buffer.nav (- (or 
                                       (and (> _G.vim.v.count 0) _G.vim.v.count) 
                                        1))))}}}}
