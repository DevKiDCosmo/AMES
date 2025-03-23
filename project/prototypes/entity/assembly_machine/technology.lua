data:extend({
    {
      type = "technology",
      name = "my-new-machine-tech",
      icon = "__amess__/graphics/icons/blank_128.png",
      icon_size = 128,
      prerequisites = {"automation"},
      unit = {
        count = 100,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 30
      },
      effects = {
        {type = "unlock-recipe", recipe = "my-new-machine"}
      }
    }
  })
