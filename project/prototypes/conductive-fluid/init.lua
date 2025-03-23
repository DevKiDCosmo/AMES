-- Function to require modules with error handling
local function safe_require(module)
    local status, result = pcall(require, module)
    if not status then
      print("Error loading module: " .. result)
    end
  end
  
  -- Require necessary modules
  -- safe_require("barrel")
  safe_require("construct")
  safe_require("recipe")
  -- safe_require("tank")
  -- safe_require("tech")