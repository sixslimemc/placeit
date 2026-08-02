# IMPL > placeit : explicit_place
# explicit_place
#--------------------
# ./main
#--------------------

setblock ~ ~ ~ air

data modify storage placeit:api explicit_place.facing_direction set from storage placeit:_ v.explicit_place.facing
data modify storage placeit:api explicit_place.data set from storage placeit:_ v.explicit_place.explicit_place.data
$$(command)
data remove storage placeit:api explicit_place