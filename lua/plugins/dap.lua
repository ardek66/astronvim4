-- [nfnl] Compiled from lua/plugins/dap.fnl by https://github.com/Olical/nfnl, do not edit.
local dap = require("dap")
local esp_dap_path = "/home/idf/local/esp-debug-adapter/"
local function _1_()
  dap.adapters.espidf = {type = "executable", command = (esp_dap_path .. "venv/bin/python"), args = {(esp_dap_path .. "debug_adapter_main.py"), "-t", "esp32"}}
  dap.configurations.cpp = {{type = "espidf", name = "Launch-name", request = "launch"}}
  return nil
end
return {"mfussenegger/nvim-dap", config = _1_}
