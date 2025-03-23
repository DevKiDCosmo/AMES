data:extend({
    {
        type = "storage-tank",
        name = "conductive-tank",
        icon = "__amess__/graphics/conductive-tank.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "conductive-tank"},
        max_health = 500,
        corpse = "medium-remnants",
        collision_box = {{-1.29, -1.29}, {1.29, 1.29}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        fluid_box = {
            base_area = 250,
            base_level = -1,
            pipe_covers = pipecoverspictures(),
            pipe_connections = {
                {position = {-1, -2}},
                {position = {1, -2}},
                {position = {-1, 2}},
                {position = {1, 2}}
            }
        },
        window_bounding_box = {{-0.05, -0.5}, {0.05, 0.5}},
        pictures = {
            picture = {
                sheets = {
                    {
                        filename = "__amess__/graphics/conductive-tank.png",
                        priority = "extra-high",
                        frames = 1,
                        width = 110,
                        height = 108,
                        shift = util.by_pixel(0, 4)
                    }
                }
            },
            fluid_background = {
                filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
                priority = "extra-high",
                width = 32,
                height = 15
            },
            window_background = {
                filename = "__base__/graphics/entity/storage-tank/window-background.png",
                priority = "extra-high",
                width = 17,
                height = 24
            },
            flow_sprite = {
                filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 20
            }
        },
        flow_length_in_ticks = 360,
        circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
        circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance
    }
})