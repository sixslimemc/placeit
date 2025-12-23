# placeit:_/main/place/place.1

setblock ~ ~ ~ air

data modify storage placeit:api this.facing_axis set from storage placeit:_ t.place.facing
data modify storage placeit:api this.data set from storage placeit:_ t.place.place.data
$$(command)
data remove storage placeit:api this