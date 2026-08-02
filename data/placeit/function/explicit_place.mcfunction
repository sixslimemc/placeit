#> placeit : explicit_place

data remove storage placeit:out explicit_place

execute store result score *x _placeit run function placeit:_/impl/explicit_place/main

data remove storage placeit:_ v.explicit_place
data remove storage placeit:in explicit_place

return run scoreboard players get *x _placeit