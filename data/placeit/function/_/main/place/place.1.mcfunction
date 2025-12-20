# placeit:_/main/place/place.1

setblock ~ ~ ~ air
stopsound @a[distance=0..10] block block.wood.place

data modify storage placeit:api this.facing_axis set from storage placeit:_ v.place.facing
data modify storage placeit:api this.data set from storage placeit:_ v.place.place.data
$$(command)
data remove storage placeit:api this