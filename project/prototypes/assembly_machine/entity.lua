data:extend({
    {
      type = "assembling-machine",
      name = "my-new-machine",
      icon = "__amess__/graphics/icons/assembly.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "my-new-machine"},
      max_health = 300,
      crafting_speed = 100,
      energy_usage = "150kW",
      crafting_categories = {"crafting"},
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input"
      },
      collision_box = {{-3.7, -3.7}, {3.7, 3.7}}, -- Added collision box
      selection_box = {{-4, -4}, {4, 4}}, -- Added selection box
      graphics_set = {
        animation = {
          layers = {
            {
              filename = "__amess__/graphics/entity/assembly.png",
              priority = "high",
              width =  256,
              height = 256,
              frame_count = 10, -- Adjusted frame count to match the sprite sheet
              line_length = 4, -- Adjusted line length to match the sprite sheet
              shift = {0, 0}, -- 128 x 128 sprite sheet for 4x4 grid
              animation_speed = 2
            }
          }
        }
      }
    }
  })
