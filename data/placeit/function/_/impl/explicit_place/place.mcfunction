# IMPL > placeit : explicit_place
# explicit_place
#--------------------
# ./main
#--------------------

setblock ~ ~ ~ air

data modify storage placeit:api placed append value {facing_direction:0}
data modify storage placeit:api placed[-1].facing_direction set from storage placeit:_ eval[-1].v.facing
data modify storage placeit:api placed[-1].data set from storage placeit:_ eval[-1].in.place.data
$$(command)
data remove storage placeit:api placed[-1]