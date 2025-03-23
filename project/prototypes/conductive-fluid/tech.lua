data:extend({
    {
        type = "technology",
        name = "conductive-fluid-tech",
        icon = "__amess__/graphics/conductive-tech.png",
        icon_size = 128,
        prerequisites = {"fluid-handling"},
        unit = {
            count = 50,
            ingredients = {{"automation-science-pack", 1}},
            time = 15
        },
        effects = {
            {type = "unlock-recipe", recipe = "create-conductive-fluid"},
            {type = "unlock-recipe", recipe = "fill-conductive-barrel"},
            {type = "unlock-recipe", recipe = "empty-conductive-barrel"}
        }
    }
})
