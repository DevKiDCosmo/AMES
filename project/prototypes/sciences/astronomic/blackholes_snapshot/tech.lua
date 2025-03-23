data:extend({
    {
        type = "technology",
        name = "blackholes-research",
        icon = "__amess__/graphics/icons/blank_64.png", -- technology/blackholes-research.png
        icon_size = 128,
        prerequisites = {"automation"},
        unit = {
            count = 100,
            ingredients = {
                {"blackholes-snapshot", 1}
            },
            time = 30
        },
        order = "a-b-c"
    }
})