data:extend({
    {
        type = "fluid",
        name = "conductive-fluid",
        default_temperature = 10,  -- Starting temperature in °C
        max_temperature = 100000,  -- Maximum temperature
        heat_capacity = "1000GJ",  -- Heat capacity
        base_color = {r=0.0, g=0.5, b=1.0},  -- Blue color
        flow_color = {r=0.0, g=0.7, b=1.0},  -- Lighter blue in pipes
        icon = "__amess__/graphics/icons/blank_128.png", --"__amess__/graphics/conductive-fluid.png",
        icon_size = 128,
        order = "a[fluid]-b[conductive-fluid]",
        subgroup = "astro-subgroup",
        gas_temperature = 3000,  -- Becomes a gas by 3000°C
        auto_barrel = true  -- Can be put into barrels
    }
})
