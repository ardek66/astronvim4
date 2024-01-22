(local dap (require :dap))
(local esp-dap-path :/home/idf/local/esp-debug-adapter/)
{1 :mfussenegger/nvim-dap
 :config (fn []
           (set dap.adapters.espidf
                {:type :executable
                 :command (.. esp-dap-path :venv/bin/python)
                 :args [(.. esp-dap-path :debug_adapter_main.py) :-t :esp32]})
           (set dap.configurations.cpp
                [{:type :espidf :name :Launch-name :request :launch}]))}
