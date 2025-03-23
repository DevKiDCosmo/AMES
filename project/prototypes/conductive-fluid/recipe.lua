data:extend({
    {
        type = "recipe",
        name = "create-conductive-fluid",
        category = "chemistry",  -- Must be a machine that can handle fluids
        enabled = false,  -- Needs to be researched first
        energy_required = 2,  -- How long it takes
        ingredients = {
            {type = "fluid", name = "water", amount = 10},
            {type = "item", name = "iron-plate", amount = 2}
        },
        results = {
            {type = "fluid", name = "conductive-fluid", amount = 5}
        },
        subgroup = "astro-subgroup",
        order = "b[fluid]-b[conductive-fluid]",
        crafting_machine_tint = {primary = {r=0.0, g=0.5, b=1.0}}
    }
})