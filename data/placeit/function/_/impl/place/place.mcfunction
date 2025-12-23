# IMPL > placeit : place
# place
#--------------------
# ./main
#--------------------

$say $(command)
setblock ~ ~ ~ air

data modify storage placeit:api this.facing_axis set from storage placeit:_ v.place.facing
data modify storage placeit:api this.data set from storage placeit:_ v.place.place.data
$$(command)
data remove storage placeit:api this