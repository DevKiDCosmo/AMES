-- Function to require modules with error handling
local function safe_require(module)
  local status, result = pcall(require, module)
  if not status then
    print("Error loading module: " .. result)
  end
end

-- Require necessary modules
safe_require("prototypes.assembly_machine.entity")
safe_require("prototypes.assembly_machine.item")
safe_require("prototypes.assembly_machine.recipe")
safe_require("prototypes.assembly_machine.technology")

safe_require("scripts.astro_group")
safe_require("prototypes.quantum_singularity.item")
safe_require("prototypes.quantum_singularity.recipe")
safe_require("prototypes.conductive-fluid.construct")
safe_require("prototypes.conductive-fluid.recipe")
safe_require("prototypes.sciences.astronomic.blackholes_snapshot.data")
