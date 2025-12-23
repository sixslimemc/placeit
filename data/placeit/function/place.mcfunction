#> placeit : place

data remove storage placeit:out place

execute store result score *x _placeit run function placeit:_/impl/place/main

data remove storage placeit:_ v.place
data remove storage placeit:in place

return run scoreboard players get *x _placeit