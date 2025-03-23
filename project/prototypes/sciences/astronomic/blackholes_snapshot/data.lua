-- Function to require modules with error handling
local function safe_require(module)
    local status, result = pcall(require, module)
    if not status then
      print("Error loading module: " .. result)
    end
  end
  
  -- Require necessary modules
  safe_require("item")  -- Add this line
  safe_require("recipe")  -- Add this line
  safe_require("technology")  -- Add this line