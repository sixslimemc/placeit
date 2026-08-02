#> placeit : explicit_place

data remove storage placeit:out explicit_place

data modify storage placeit:_ eval append value {in:{}, out:{}, v:{}}
data modify storage placeit:_ eval[-1].in set from storage placeit:in explicit_place
data remove storage placeit:in explicit_place

execute store result score *x _placeit run function placeit:_/impl/explicit_place/main

data modify storage placeit:out explicit_place set from storage placeit:_ eval[-1].out
data remove storage placeit:_ eval[-1]

return run scoreboard players get *x _placeit