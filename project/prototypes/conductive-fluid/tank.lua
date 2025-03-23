data:extend({
    {
        type = "storage-tank",
        name = "conductive-tank",
        icon = "__MyMod__/graphics/conductive-tank.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "conductive-tank"},
        max_health = 5000,
        fluid_box = {
            base_area = 250,  -- Storage capacity
            pipe_connections = {
                {position = {-1, 0}}, {position = {1, 0}}, {position = {0, -1}}, {position = {0, 1}}
            }
        },
        pictures = {
            picture = {
                sheets = {
                    {
                        filename = "__amess__/graphics/conductive-tank.png",
                        width = 128,
                        height = 128,
                        frames = 1
                    }
                }
            }
        }
    }
})
