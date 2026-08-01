# IMPL > placeit : place
# place
#--------------------
# ./main
#--------------------

setblock ~ ~ ~ air

data modify storage placeit:api place.facing_direction set from storage placeit:_ v.place.facing
data modify storage placeit:api place.data set from storage placeit:_ v.place.place.data
$$(command)
data remove storage placeit:api place