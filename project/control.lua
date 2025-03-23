color1 = {0.22, 0.88, 0.22, 0.5}
color2 = {39 / 255, 128 / 255, 109 / 255, 0.5}

function foo(tableIn)
    local player = game.get_player(tableIn.player_index)
    
    player.print("Hello, " .. player.name .. " - A msg from " .. tableIn.name .. " for you", {color = color1})
    game.print("Hello - A msg from " .. tableIn.name .. " for all", {color = color2})
end

commands.add_command("foo", "Prints a message", foo)