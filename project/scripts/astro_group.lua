data:extend({
    {
        type = "item-group",
        name = "astro-group",  -- Internal name
        order = "z",           -- Appears last in the UI (change to "a" to appear first)
        icon = "__amess__/graphics/astro-tab.png",  -- Custom icon
        icon_size = 128,
        inventory_order = "z",  -- Ensure it appears in the inventory
        allowed_effects = {"consumption", "speed", "productivity", "pollution"}  -- Specify allowed effects
    },
    {
        type = "item-subgroup",
        name = "astro-subgroup",
        group = "astro-group",  -- Assign to "Astro" tab
        order = "a"
    }
})
